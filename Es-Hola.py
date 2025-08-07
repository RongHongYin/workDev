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
{
    "category": "Actualidad_Actualidad",
    "url": "https://www.hola.com/actualidad/",
    "type": "1"
},
{
    "category": "Actualidad_Televisión",
    "url": "https://www.hola.com/tags/television/",
    "type": "0"
},
{
    "category": "Casas Reales_Casas Reales",
    "url": "https://www.hola.com/realeza/",
    "type": "1"
},
{
    "category": "Casas Reales_España",
    "url": "https://www.hola.com/realeza/casa_espanola/",
    "type": "1"
},
{
    "category": "Casas Reales_Reino Unido",
    "url": "https://www.hola.com/realeza/casa_inglesa/",
    "type": "1"
},
{
    "category": "Casas Reales_Holanda",
    "url": "https://www.hola.com/realeza/casa_holanda/",
    "type": "1"
},
{
    "category": "Casas Reales_Mónaco",
    "url": "https://www.hola.com/realeza/casa_monaco/",
    "type": "1"
},
{
    "category": "Casas Reales_Noruega",
    "url": "https://www.hola.com/realeza/casa_noruega/",
    "type": "1"
},
{
    "category": "Casas Reales_Suecia",
    "url": "https://www.hola.com/realeza/casa_suecia/",
    "type": "1"
},
{
    "category": "Casas Reales_Dinamarca",
    "url": "https://www.hola.com/realeza/casa_danesa/",
    "type": "1"
},
{
    "category": "Casas Reales_Bélgica",
    "url": "https://www.hola.com/realeza/casa_belga/",
    "type": "1"
},
{
    "category": "Casas Reales_Luxemburgo",
    "url": "https://www.hola.com/realeza/casa_luxemburgo/",
    "type": "1"
},
{
    "category": "Casas Reales_Liechtenstein",
    "url": "https://www.hola.com/realeza/casa_liechtenstein/",
    "type": "1"
},
{
    "category": "Moda_Moda",
    "url": "https://www.hola.com/moda/",
    "type": "1"
},
{
    "category": "Moda_Modelos",
    "url": "https://www.hola.com/moda/modelos/",
    "type": "1"
},
{
    "category": "Moda_Noticias",
    "url": "https://www.hola.com/moda/actualidad/",
    "type": "1"
},
{
    "category": "Moda_Pasarelas",
    "url": "https://www.hola.com/moda/pasarelas/",
    "type": "1"
},

{
    "category": "Moda_Complementos",
    "url": "https://www.hola.com/tags/complementos/",
    "type": "0"
},
{
    "category": "Belleza_Belleza",
    "url": "https://www.hola.com/belleza/",
    "type": "1"
},
{
    "category": "Belleza_Tendencias",
    "url": "https://www.hola.com/belleza/tendencias/",
    "type": "1"
},
{
    "category": "Belleza_Cara Y Cuerpo",
    "url": "https://www.hola.com/belleza/caraycuerpo/",
    "type": "1"
},
{
    "category": "Belleza_Peinados",
    "url": "https://www.hola.com/tags/peinados/",
    "type": "0"
},
{
    "category": "Belleza_Perder Peso",
    "url": "https://www.hola.com/tags/perder-peso/",
    "type": "0"
},
{
    "category": "Belleza_En Forma",
    "url": "https://www.hola.com/tags/en-forma/",
    "type": "0"
},
{
    "category": "Belleza_¡Hola! Beauty Addict",
    "url": "https://www.hola.com/hubs/hola-beauty-addict/",
    "type": "1"
},
{
    "category": "Cocina",
    "url": "https://www.hola.com/cocina/",
    "type": "1"
},
{
    "category": "Estar Bien",
    "url": "https://www.hola.com/estar-bien/",
    "type": "1"
},
{
    "category": "Living",
    "url": "https://www.hola.com/decoracion/",
    "type": "1"
},
{
    "category": "Viajes",
    "url": "https://www.hola.com/viajes/",
    "type": "1"
},
{
    "category": "Novias_Novias",
    "url": "https://www.hola.com/novias/",
    "type": "1"
},
{
    "category": "Padres",
    "url": "https://www.hola.com/padres/",
    "type": "1"
},
{
    "category": "Hola! Madrid",
    "url": "https://www.hola.com/guias/madrid/",
    "type": "1"
},
{
    "category": "Horóscopo",
    "url": "https://www.hola.com/horoscopo/",
    "type": "1"
},
{
    "category": "H!Fashion",
    "url": "https://www.hola.com/fashion/",
    "type": "1"
}



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

# 主函数
def main(mapping):
    start_time = time.time()  # 开始时间
    for item in mapping:
        category = item.get("category")
        url = item.get("url")
        type = item.get("type")
        category_page_spider_loop(url, category, type)
    end_time = time.time()  # 结束时间
    # print(f"代码运行时长：{end_time - start_time}秒")
    logging.info(f"代码运行时长：{end_time - start_time}秒_")

# category页面分页循环
def category_page_spider_loop(url, category, type, article_total=0):
    try:
        # print(url)
        next_page = url
        over_count = 0
        status = ''
        article_total = 0
        logging.info(f"当前分类:{category},   当前文章数:{article_total}    url:{url}")
        # print(f"当前分类:{category},  抓取中   当前文章数:{article_total}   url:{url}")
        while next_page:
            article_list = []
            re = make_request(url)
            soup = BeautifulSoup(re.text, "html.parser")
        # 构建新闻列表
            # 类型0网站处理
            if type == '0':
                article_boxs = soup.find('div', attrs={"id":"next"}).find_all('a', class_='hm-link')
                for article_box in article_boxs:
                    article_list.append(article_box['href'])
                article_list = list(dict.fromkeys(article_list))
            # 类型1网站处理
            if type == '1':
                article_boxs = soup.find('div', class_='skin-container').find_all('a', class_='hm-link')
                for article_box in article_boxs:
                    article_list.append(article_box['href'])
                article_list = list(dict.fromkeys(article_list))
            for article_url in article_list:
                # 获取详情页
                status = detail_page_spider(article_url, category)
                article_total += 1
                # 判断文章发布时间是否大于180天
                if status == 1:
                    over_count += 1
                    if over_count >= 10:
                        # print(f"当前分类:{category},  当前文章发布时间超过180天，且当前分类：{category}已超过10条，终止当前分类。   当前文章数:{article_total}  URL:{url}")
                        logging.info(f"当前分类:{category},  当前文章发布时间超过180天，且当前分类：{category}已超过10条，终止当前分类。   当前文章数:{article_total}  URL:{url}")
                        return article_total
                # 50条限制逻辑，根据具体网站具体情况做出修改，
                if article_total > 50:
                    # print(f"当前分类:{category},  文章数量已达到50   当前文章数:{article_total}  URL:{url}")
                    logging.info(f"当前分类:{category}, , 当前文章数:{article_total}  URL:{url}")
                    return article_total
            # 获取下一页链接
            next_box = soup.find('a', attrs={"aria-label":"Go to next page"})
            if next_box :
                # print(f'下一页链接:{next_box["href"]}')
                next_page = next_box['href']
        # print(f"当前分类:{category}   抓取完成,共{article_total}篇文章  URL:{url} ")
        logging.info(f"当前分类:{category}抓取完成,共{article_total}篇文章   URL:{url}")
        return article_total 

    except Exception as e:
        logging.error(f"分类页面首次抓取失败,err:{e}   category:{category}  url:{url} " )
        # print(f"分类页面首次抓取失败,err:{e}   category:{category}  URL:{url} ")
        return article_total 


# 详情页内容抓取
@retry(stop_max_attempt_number=3, wait_fixed=2000)
def detail_page_spider(url, category):
    try:
        # print(url)
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
        title_box = soup.find('meta', attrs={"property":"og:title"})
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



        # 处理方法二：
        import re as regex
        pattern = r'"datePublished"\s*:\s*"([^"]+)"'
        match = regex.search(pattern, re.text)
        if match:
            time_str = match.group(1)
            timestamp = int(time.mktime((datetime.strptime(time_str, '%Y-%m-%dT%H:%M:%S.%fZ')+timedelta(hours=1)).timetuple()))
            formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
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
        content_box = soup.find('meta',attrs={'name':'description'})
        if content_box:
            content = str(content_box['content'].strip())
            # contentxml = str(content_box['content'].strip()).replace('"', '\"')


        # fulltext 全文必须字段，需要是 文章的正文部分

        fulltext = ''
        # fulltextxml = ''
        full = soup.find('div', class_='ldJsonContent')
        img_list = []

        if full:
            fulltext_box = full.find_all('p')
            if fulltext_box:
                for p in fulltext_box:
                    fulltext += str(p.get_text().strip()) + '\n'
                    # fulltextxml += str(p.prettify()).replace('"', '\"')
            img_list_box = full.find_all('img')
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
            "country": "es",
            "language": "es",
            "category": category,
            "publish_timestamp": int(timestamp),
            "pub_date": formatted_time,
            "publisher": "Hola",
            "publisher_icon": "https://www.hola.com/apple-touch-icon-57x57.png",
            "domain": "hola.com",
            "url": url,
            "tags": tags,
            "image_url": img_url,
            "image_url_list": img_list,
            "from_zhua":"ZSL"
        }
        meta = json.dumps(meta, ensure_ascii=False)
        data = {
            "from_domain":"hola.com",
            "fid": fid,
            "ts": int(timestamp),
            "country": "es",
            "language": "es",
            "category": category,
            "meta": str(meta),
            "title": title,
            "content": content.replace('\'', '"'),
            # # "contentxml": str(contentxml.replace('\'', '"')),
            "fulltext": fulltext.replace('\'', '"'),
            # # "fulltextxml": str(fulltextxml.replace('\'', '"')),
        }
        # # print(data)
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
        logging_save_dir, f"Es-Hola_{the_time}.log" # 需要根据当前网站补充日志名称
    )

    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s - %(levelname)s - %(message)s",
        filename=logging_save_path,
    )
    main(mapping)

