from io import BytesIO
from PIL import Image
import json
import os
import logging
from datetime import datetime, timedelta
from PIL import Image
import requests
from retrying import retry
import time
from bs4 import BeautifulSoup
import re as regex



# 抓取网站链接列表，一般为：{"category": "", "url": ""}  根据网站具体情况 可补充其他字段
mapping = [
  {"category": "Política", "url": "https://cbn.globo.com/politica/"},
  {"category": "Economia", "url": "https://cbn.globo.com/economia/"},
  {"category": "Mundo", "url": "https://cbn.globo.com/mundo/"},
  {"category": "Brasil", "url": "https://cbn.globo.com/brasil/"},
  {"category": "São Paulo", "url": "https://cbn.globo.com/sao-paulo/"},
  {"category": "Rio de Janeiro", "url": "https://cbn.globo.com/rio-de-janeiro/"},
  {"category": "Belo Horizonte", "url": "https://cbn.globo.com/belo-horizonte/"},
  {"category": "Brasília", "url": "https://cbn.globo.com/brasilia/"},
  {"category": "Meio Ambiente", "url": "https://cbn.globo.com/meio-ambiente/"},
  {"category": "Saúde", "url": "https://cbn.globo.com/saude/"},
  {"category": "Cultura", "url": "https://cbn.globo.com/cultura/"},
  {"category": "Tecnologia", "url": "https://cbn.globo.com/tecnologia/"},
  {"category": "Esporte", "url": "https://cbn.globo.com/esporte/"}
]





headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36',
    'Accept': 'application/json, text/plain, */*',
    'Accept-Language': 'en-US,en;q=0.5',
    'Accept-Encoding': 'gzip, deflate, br',
    'Connection': 'keep-alive',
    'Content-Type': 'application/json'
}

# 请求URL函数

@retry(stop_max_attempt_number=3, wait_fixed=2000)
def make_request(url, method="GET", headers=None, data=None, params=None, json=None, timeout=60):
    try:
        if method.upper() == "GET":
            response = requests.get(url, headers=headers, params=params, json=json, timeout=timeout)
        elif method.upper() == "POST":
            response = requests.post(url, headers=headers, data=data, json=json, timeout=timeout)
        
        if response.status_code == 200:
            return response
        elif response.status_code == 404:
            # print("资源未找到 (404)。")
            logging.error(f"资源未找到 (404)。")
            return None
        else:
            # print(f"请求失败，状态码为: {response.status_code}")
            logging.error(f"请求失败，状态码为: {response.status_code}")
            return None
    
    except requests.exceptions.Timeout:
        # print("请求超时，超过 5 秒未返回。")
        logging.error(f"请求超时，超过 5 秒未返回。")
        return None
    
    except requests.exceptions.RequestException as e:
        # print(f"请求失败，错误信息: {e}")
        logging.error(f"请求失败，错误信息: {e}")
        return None

# 上报数据库接口函数
@retry(stop_max_attempt_number=3, wait_fixed=2000)
def upload_data(data, sid):
    try:
        url = "https://api.molitechnews.com/supply/item/add"
        if sid == "dev":
            headers = {
                "supply-id": "dev",
                "supply-token": "13579",
                "Content-Type": "application/json",
            }
        elif sid == "prod":
            headers = {
                "supply-id": "prod",
                "supply-token": "3566533",
                "Content-Type": "application/json",
            }
        response = requests.post(url, headers=headers, json=data)
        if response.json().get("code", 0) != 0:
            logging.error(f"文章抓取完成但上传失败,err:{response.json()}   ")
            # print(f"文章抓取完成但上传失败,err:{response.json()}   ")
    except Exception as e:
        logging.error(f"文章抓取完成但上传失败,err:{e}   ")
        # print(f"文章抓取完成但上传失败,err:{e}   ")
page_index =1
# 主函数
def main(mapping):
    start_time = time.time()  # 开始时间
    for item in mapping:
        category = item.get("category")
        url = item.get("url")
        global page_index
        page_index = 1
        category_page_spider_loop(url, category)
    end_time = time.time()  # 结束时间
    # print(f"代码运行时长：{end_time - start_time}秒")
    logging.info(f"代码运行时长：{end_time - start_time}秒_")

# category页面分页循环
def category_page_spider_loop(url, category,article_total=0,over_count = 0):
    try:

        # 50条限制逻辑，根据具体网站具体情况做出修改，
        if article_total > 50:
            # print(f"当前分类:{category},  文章数量已达到50   当前文章数:{article_total}  URL:{url}")
            logging.info(f"当前分类:{category}, , 当前文章数:{article_total}  URL:{url}")
            return article_total
        
        re = make_request(url)
        soup = BeautifulSoup(re.text, "html.parser")
     
        logging.info(f"当前分类:{category},   当前文章数:{article_total}    url:{url}")
        # print(f"当前分类:{category},  抓取中   当前文章数:{article_total}   url:{url}")
        
        article_list=[]
        article_list1 = soup.find_all('div', class_='bstn-hl-wrapper')   
        article_list2 = soup.find_all('div', class_='bastian-feed-item')
        article_list = article_list1 + article_list2

        for article in article_list:
            if article: 
                article_url = article.find('a')['href']                                       
                # print('URL:',article_url)
                status=detail_page_spider(article_url, category)
                # 判断文章发布时间是否大于180天
                if status == 1:
                    over_count += 1
                    if over_count >= 10:
                        # print(f"当前分类:{category},  当前文章发布时间超过180天，且当前分类：{category}已超过10条，终止当前分类。   当前文章数:{article_total}  URL:{url}")
                        logging.info(f"当前分类:{category},  当前文章发布时间超过180天，且当前分类：{category}已超过10条，终止当前分类。   当前文章数:{article_total}  URL:{url}")
                        return article_total
                article_total += 1
                              
        time.sleep(15)    
        global page_index
        page_index +=1
        page_box=soup.find('div',class_='load-more gui-color-primary-bg') 
        if page_box: 
            next_box = page_box.find('a')
            if next_box:                             
                next_url = next_box['href'][:next_box['href'].rfind("-") + 1]+str(page_index)
                # print('NEXT_URL:',next_url)
                return category_page_spider_loop(next_url, category,article_total,over_count)                 

        # print(f"当前分类:{category}   抓取完成,共{article_total}篇文章  URL:{url} ")
        logging.info(f"当前分类:{category}抓取完成,共{article_total}篇文章   URL:{url}")
        return article_total 
    except Exception as e:
        logging.error(f"分类页面首次抓取失败,err:{e}   category:{category}  url:{url} " )
        # print(f"分类页面首次抓取失败,err:{e}   category:{category}  URL:{url} ")
        return article_total 


# 详情页内容抓取
@retry(stop_max_attempt_number=1, wait_fixed=2000)
def detail_page_spider(url, category):
    try:
        re = make_request(url)
        re.encoding = "utf-8"
        soup = BeautifulSoup(re.text, "html.parser")
        # 创建MD5哈希对象
        import hashlib
        md5_hash = hashlib.md5()
        # 更新哈希对象，注意数据需要编码为字节
        md5_hash.update(url.encode("utf-8"))
        fid = str(md5_hash.hexdigest())

        # 需要寻找文章标题的标签，一般可以直接寻找 title 标签
        title_box = soup.find('meta',attrs={"property":"og:title"})
        if title_box:
            title = str(title_box['content'].strip())
        else:
            # print(f"标题为空,URL:{url}")
            logging.error(f"标题为空,URL:{url}")
            return None

        # 一般不用修改，如果此标签的content不是文章的图片，则寻找类似的标签
        img_box = soup.find('meta',attrs={"property":"og:image"}) 
        if img_box:
            img_url = str(img_box['content'].strip())
            
            if len(img_url) <10:
                # print(f"图片URL为空,URL:{url}")
                logging.error(f"图片URL为空,URL:{url}")
                return None

            img_request = make_request(img_url)
            img = Image.open(BytesIO(img_request.content))
            width, height = img.size
            
            if img_request == None:
                # print(f"图片无效,URL:{url}")
                logging.error(f"图片为空,URL:{url}")
                return None
        else:
            # print(f"图片为空,URL:{url}")
            logging.error(f"图片为空,URL:{url}")
            return None
      
        time_str  = soup.find('time',attrs={'itemprop':'datePublished'})      
        if time_str:
            time_str=time_str['datetime']
            if time_str.endswith("Z") and "." in time_str:               
                timestamp = int(time.mktime((datetime.strptime(time_str, '%Y-%m-%dT%H:%M:%S.%fZ')+timedelta(hours=1)).timetuple()))
                formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
            elif time_str.endswith("Z"):             
                timestamp = int(time.mktime((datetime.strptime(time_str, '%Y-%m-%dT%H:%M:%SZ')+timedelta(hours=1)).timetuple()))
                formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
            elif "T" in  time_str and "." in time_str:    
                 # 如果时区部分包含冒号，去除冒号使其符合 %z 格式
                if time_str[-3] == ":":
                    time_str = time_str[:-3] + time_str[-2:]  # 将 -03:00 转换为 -0300  
                timestamp = int(time.mktime((datetime.strptime(time_str, '%Y-%m-%dT%H:%M:%S.%f%z')+timedelta(hours=0)).timetuple()))
                formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')    
            elif "T" in  time_str and len(time_str)> 13:    
                timestamp = int(time.mktime((datetime.strptime(time_str, '%Y-%m-%dT%H:%M:%S%z')+timedelta(hours=0)).timetuple()))
                formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
            elif "T" in  time_str:
                timestamp = int(time.mktime((datetime.strptime(time_str, '%Y%m%dT%H%M')+timedelta(hours=0)).timetuple()))
                formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
            else:        
                timestamp = int(time.mktime((datetime.strptime(time_str, '%Y-%m-%d %H:%M:%S%z')+timedelta(hours=0)).timetuple()))
                formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
            # print(f"时间:{timestamp}")
            # print(f"时间:{formatted_time}")
        else:
            # print(f"时间为空,URL:{url}")
            logging.error(f"时间为空,URL:{url}")
            return None

        # 判断发布时间超过180天
        current_timestamp = time.time() 
        threshold_timestamp = current_timestamp - 180 * 24 * 60 * 60
        if timestamp < threshold_timestamp:
            # print("发布时间超过180天。:{url}")
            logging.error(f"发布时间超过180天。:{url}")
            return 1


        # 需检查description标签的content属性是否为文章摘要，如果不是，则寻找其他方法，如果确实摘要内容则 content = ‘’
        content = ''
        # contentxml = ''
        content_box = soup.find('meta',attrs={"property":"og:description"})        
        if content_box:
            content = str(content_box['content'].strip())
            # contentxml = str(content_box['content'].strip()).replace('"', '\"')


        # fulltext 全文必须字段，需要是 文章的正文部分
        fulltext = ''
        # fulltextxml = ''

        full = soup.find_all('div', class_=lambda class_list: class_list and 'mc-column' in class_list and 'content-text' in class_list and 'active-extra-styles' in class_list) 

        img_list = []

        if full:
            for fu in full:
                if fu:        
                    fulltext_box = fu.find_all('p')
                    if fulltext_box:
                        for p in fulltext_box:
                            fulltext += str(p.get_text().strip()) + '\n'
                            # fulltextxml += str(p.prettify()).replace('"', '\"')
            
                    img_list_box = fu.find_all('img')
                    if img_list_box:
                        for img in img_list_box:
                            if img.get('src'):
                                if img.get('src').startswith('http:'):
                                    img_list.append(img.get('src'))
        else:
            # print(f"正文为空,URL:{url}")
            logging.error(f"正文为空,URL:{url}")
            return None
        img_list = img_list[:5]

        fulltext = regex.sub(r'(\n)+', '\n', fulltext.strip()) 
        # 检查 fulltext 的长度，如果小于 200 则返回 None
        if len(fulltext.strip()) < 200:
            # print(f"正文内容太短 (小于 200 字符),URL:{url}")
            logging.error(f"正文内容太短 (小于 200 字符),URL:{url}")
            return None

    
        # 文章的tags，如果没有tags 则为空列表，如果有tags，补充tags_box 即可， 剩下代码会找到tags_box里的a 标签进行处理 
        tags = []
        tags = "_".join(tags).title()
        
        meta = {
            "country": "br",
            "language": "pt",
            "category": category,
            "publish_timestamp": int(timestamp),
            "pub_date": formatted_time,
            "publisher": "CBN",
            "publisher_icon": "https://s2-cbn.glbimg.com/8omCOX83cUkXOwx1pHqZXi2TAew=/192x192/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_d975fad146a14bbfad9e763717b09688/internal_photos/bs/2021/z/M/JpDF4cRs6ZHPip8YMKNw/cbn.png",
            "domain": "cbn.globo.com",
            "url": url,
            "tags": tags,
            "image_url": img_url,
            "image_url_list": img_list,
            "from_zhua":"LHT"
        }
        meta = json.dumps(meta, ensure_ascii=False)
        data = {
            "from_domain":"cbn.globo.com",
            "fid": fid,
            "ts": int(timestamp),
            "country": "br",
            "language": "pt",
            "category": category,
            "meta": str(meta),
            "title": title,
            "content": content.replace('\'', '"'),
            # # "contentxml": str(contentxml.replace('\'', '"')),
            "fulltext": fulltext.replace('\'', '"'),
            # # "fulltextxml": str(fulltextxml.replace('\'', '"')),
        }
        # print(data)
        logging.info(f"抓取成功    图片分辨率：：{width}x{height}        {url}")
        # print(f"抓取成功    图片分辨率：：{width}x{height}        {url}")
        upload_data(data, "prod")
    except Exception as e:
        logging.error(f"详情页面抓取失败,err:{e}   category:{category} URL:{url} ")
        # print(f"详情页面抓取失败,err:{e}   category:{category}  URL:{url} ")
        return None
    

# 当前目录部署日志
if __name__ == "__main__":
    script_path = os.path.abspath(__file__)
    base_path = os.path.dirname(script_path)
    logging_save_dir = os.path.join(base_path, "log")
    if not os.path.exists(logging_save_dir):
        os.makedirs(logging_save_dir)
    the_time = datetime.now().strftime("%Y-%m-%d")
    logging_save_path = os.path.join(
        logging_save_dir, f"Br_CBN_{the_time}.log" # 需要根据当前网站补充日志名称
    )

    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s - %(levelname)s - %(message)s",
        filename=logging_save_path,
    )
    main(mapping)

