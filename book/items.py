# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class BookItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    bookId = scrapy.Field()
    bookName = scrapy.Field()
    bookCateId = scrapy.Field()
    bookCateName = scrapy.Field()
    bookPic = scrapy.Field()
    bookInfo = scrapy.Field()
    bookAuthor = scrapy.Field()
    articleState = scrapy.Field()
    pass
