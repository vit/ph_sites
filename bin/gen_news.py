

import sqlite3
import dateutil
import yaml

# DB_FILENAME = 'data/ipacs_news.db'
DB_FILENAME = 'data/ipacs/ipacs_news.db'
TEXT_FILENAME = 'src/data/ipacs_news.yaml'
FIELD_NAMES = ['id', 'title', 'content', 'created_at']

with sqlite3.connect(DB_FILENAME) as connection:
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM ipacs_news ORDER BY created_at DESC')
    all_news = cursor.fetchall()

    # news_list = [ dict(zip(FIELD_NAMES, d)) for d in all_news ]

    news_list = list( map(lambda row: dict(row, **{
        'created_at': dateutil.parser.parse(row['created_at']) 
    }), [
        dict( zip(FIELD_NAMES, row) ) for row in all_news
    ]) )

    # print(news_list)

    with open(TEXT_FILENAME, 'w') as file:
        yaml.dump(news_list, file)
