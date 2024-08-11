
# import dateutil
import yaml
import os


GALS_FILENAME = 'src/data/album/galleries.yaml'
CONTENT_PATH = 'src/sites/album/content'
# FIELD_NAMES = ['id', 'title', 'content', 'created_at']

with open(GALS_FILENAME, 'r') as f:
    data = yaml.load(f, Loader=yaml.SafeLoader)
     
# print(data)

for elm in data:
    if not 'type' in elm or elm['type'] != 1:
        # print(elm)
        # print(elm['dir'])
        # path = os.path.join(CONTENT_PATH, elm['dir']) 
        path = os.path.join(CONTENT_PATH, elm['dir'], 'index') 
        # print(path)
        if not os.path.exists(path):
            os.makedirs(path, exist_ok=True)
            # os.mkdir(path) 
        file_content = """
+++
title="{title}"
+++
""".format(title=elm['title'].replace('"','\\"'))
        # print(file_content)
        index_path = os.path.join(path, "_index.html") 
        print(index_path)
        with open(index_path, "w") as index_file:
            index_file.write(file_content)





  
  





# with open(TEXT_FILENAME, 'w') as file:
#         yaml.dump(news_list, file)
