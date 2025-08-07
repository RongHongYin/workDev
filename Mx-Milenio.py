import json
import os
import logging
from datetime import datetime, timedelta
import requests
from retrying import retry
import time
from bs4 import BeautifulSoup

start_time = time.time()  # 开始时间
mapping = [

{"category": "México_Política", "url": "https://www.milenio.com/ultima-hora?section=1"},
{"category": "México_Estados", "url": "https://www.milenio.com/ultima-hora?section=90"},
{"category": "México_Policía", "url": "https://www.milenio.com/ultima-hora?section=11"},
{"category": "México_Negocios", "url": "https://www.milenio.com/ultima-hora?section=4"},
{"category": "México_Mundo", "url": "https://www.milenio.com/ultima-hora?section=6"},
{"category": "México_Estilo", "url": "https://www.milenio.com/ultima-hora?section=6"},
{"category": "México_La Afición", "url": "https://www.milenio.com/ultima-hora?section=3"}


    
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
def make_request(url, method="GET", headers=None, data=None, params=None, json=None):
    if method.upper() == "GET":
        response = requests.get(url, headers=headers, params=params, json=json)
    elif method.upper() == "POST":
        response = requests.post(url, headers=headers, data=data, json=json)
    
    if response.status_code == 200:
        return response
    elif response.status_code == 404:
        # print("Resource not found (404).")
        logging.error(f"Resource not found (404). url:{url}")
        return None
    else:
        # print(f"Request failed with status code: {response.status_code}")
        logging.error(f"Request failed with status code: {response.status_code} url:{url}")
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
            logging.error(f"文章抓取完成但上传失败,err:{response.json()}  ")
            # print(f"文章抓取完成但上传失败,err:{response.json()}  ")
    except Exception as e:
        logging.error(f"文章抓取完成但上传失败,err:{e}  ")
        # print(f"文章抓取完成但上传失败,err:{e}  ")

# 主函数
def main(mapping):
    for item in mapping:
        category = item.get("category")
        url = item.get("url")
        category_page_spider_loop(url, category)
    end_time = time.time()  # 结束时间
    # print(f"代码运行时长：{end_time - start_time}秒")
    logging.info(f"代码运行时长：{end_time - start_time}秒_")





# category页面分页循环
def category_page_spider_loop(url, category,article_total=0):
    try:
        if article_total > 50:
            # print(f"当前分类:{category}, url:{url}, article_total:{article_total} ")
            logging.info(f"当前分类抓取完成:{category},  当前文章数:{article_total}  url:{url}, ")
            return article_total
        re = make_request(url)
        soup = BeautifulSoup(re.text, "html.parser")
        logging.info(f"当前分类:{category},  当前文章数:{article_total}  url:{url} ")
        # print(f"当前分类:{category},url:{url},  article_total:{article_total}")

        article_list=[]


        if soup.find('ul',class_='list-small-large-last-news__ul'):
            article_list = soup.find_all('li',class_='lr-list-row-row-news')
        
            for article in article_list:
                article_url = article.find('a')
                if article_url:
                    article_url = 'https://www.milenio.com'+ article_url.get('href')
                else:
                    # print('URL为空')
                    logging.info('URL为空')
                    continue
                detail_page_spider(article_url, category)
                # print('URL:',article_url)
            article_total += len(article_list)

            if soup.find('ul',class_='camus-paginator__urls'):
                next_page = soup.find('li',class_='camus-paginator__urls__next')
                if next_page:
                    next_page_url = 'https://www.milenio.com'+next_page.find('a').get('href')
                    return category_page_spider_loop(next_page_url, category,article_total)




            logging.info(f"当前分类:{category}抓取完成,共{article_total}篇文章")
            return article_total    

        else:
            # print('当前分类没有文章,不是列表')
            logging.info('当前分类没有文章,不是列表')
            # logging.info(f"当前分类:{category},url:{url}   article_total:{article_total}")

        # print(f"当前分类:{category}抓取完成,共{article_total}篇文章")
        logging.info(f"当前分类:{category}抓取完成,共{article_total}篇文章")
        return article_total 
    except Exception as e:
        logging.error(f"分类页面首次抓取失败,err:{e}  category:{category} " )
        # print(f"分类页面首次抓取失败,err:{e}  category:{category} ")
        return article_total 


# 详情页内容抓取
@retry(stop_max_attempt_number=3, wait_fixed=2000)
def detail_page_spider(url, category):
    try:
        re = make_request(url=url)
        re.encoding = "utf-8"
        soup = BeautifulSoup(re.text, "html.parser")
        # 创建MD5哈希对象
        import hashlib
        md5_hash = hashlib.md5()
        # 更新哈希对象，注意数据需要编码为字节
        md5_hash.update(url.encode("utf-8"))
        fid = str(md5_hash.hexdigest())


        title_box = soup.find('meta',attrs={'name':'cXenseParse:title'})
        if title_box:
            title = str(title_box['content'].strip())

        else:
            # print('标题为空')
            logging.info('标题为空')
            return None



        img_url = soup.find('meta',attrs={'property':'og:image'})
        if img_url:
            img_url = img_url['content']
        else:
            # print('图片URL为空')
            logging.info('图片URL为空')
            return None
        


        time_str  = soup.find('meta',attrs={'name':'cXenseParse:publishtime'})
        if time_str:
            time_str = time_str['content']
            timestamp = int(time.mktime((datetime.strptime(time_str, '%Y-%m-%dT%H:%M:%S%z')-timedelta(hours=6)).timetuple()))
            formatted_time = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
        else:
            # print('时间为空')
            logging.info('时间为空')
            return None
        



        content = ''
        contentxml = ''
        content_box = soup.find('meta',attrs={'name':'description'})
        if content_box:
            content = str(content_box['content'].strip())
            contentxml = str(content_box['content'].strip()).replace('"', '\"')
        else:
            # print('摘要为空')
            logging.info('摘要为空')
            return None
        

        fulltext = ''
        fulltextxml = ''
        full = soup.find('div',id='content-body')
        if full:
            fulltext_box = full.find_all('p')
            if fulltext_box:
                for p in fulltext_box:
                    fulltext += str(p.get_text().strip()) + '\n'
                    fulltextxml += str(p.prettify()).replace('"', '\"')
            img_list = []
            img_list_box = full.find_all('img')
            if img_list_box:
                for img in img_list_box:
                    img_list.append(img.get('src'))
        else:
            # print('正文为空')
            logging.info('正文为空')
            return None
        
        tags = []
        tags_box = soup.find('li',class_='nd-tags-detail-base__tags')
        if tags_box:
            for tag in tags_box.find_all('a'):
                tags.append(tag.get_text().strip())
        else:
            # print('标签为空')
            logging.info('标签为空')
        

        tags = "_".join(tags).title()
        meta = {
            "country": "mx",
            "language": "mx",
            "category": category,
            "publish_timestamp": int(timestamp),
            "pub_date": formatted_time,
            "publisher": "Milenio",
            "publisher_icon": "https://www.milenio.com/bundles/appcamusassets/dist/images/icons/57x57.png",
            "domain": "milenio.com",
            "url": url,
            "tags": tags,
            "image_url": img_url,
            "image_url_list": img_list,
            "from_zhua":"RHY"
        }
        meta = json.dumps(meta, ensure_ascii=False)
        data = {
            "from_domain":"milenio.com",
            "fid": fid,
            "ts": int(timestamp),
            "country": "mx",
            "language": "mx",
            "category": category,
            "meta": str(meta),
            "title": title,
            "content": content,
            "contentxml": str(contentxml),
            "fulltext": fulltext,
            "fulltextxml": str(fulltextxml),
        }
        # print(data)
        logging.info(f"抓取成功：{url}")
        # print(f"抓取成功：{url}")
        upload_data(data, "prod")
    except Exception as e:
        logging.error(f"详情页面抓取失败,err:{e}  category:{category} ")
        # print(f"详情页面抓取失败,err:{e}  category:{category} ")
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
        logging_save_dir, f"Mx-Milenio_{the_time}.log"
    )

    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s - %(levelname)s - %(message)s",
        filename=logging_save_path,
    )
    main(mapping)
