import scrapy
import requests
from scrapy.http import Request
from book.items import BookItem

class Myspider(scrapy.Spider):
    name ="book"
    allowed_domains = ['https://www.x23us.com']
    bash_url = "https://www.x23us.com/class/"
    # Save_Num= NumberCheck.find_save()
    def start_requests(self):
        for i in range(1,10):
            url = self.bash_url + ""+ str(i) +"_1.html"
            yield Request(url,self.bookList)
    
    def bookList(self,response):
        item = BookItem()
        baseUrl = response.url
        max_num = response.xpath('//*[@id="pagelink"]/a[14]/text()').extract_first()

        # print(max_num)
        baseurl = baseUrl[:-7]
        for num in range(1,3):
            newurl = baseurl+'_'+str(num)+'.html'
            # print(newurl)
            yield Request(newurl,dont_filter=True,callback=self.getBookName)

    def getBookName(self,response):
        vlist = response.xpath('//tr')
        for noveurl in vlist:
            nameurl = noveurl.xpath('td[1]/a/@href').extract_first()
            name = noveurl.xpath('td[1]/a[2]/text()').extract_first()
            if nameurl:
                yield Request(nameurl,dont_filter=True,callback=self.getBookInfo,meta={'name':name})

    def getBookInfo(self,response):
        bookname = response.meta['name']
        bookPic = response.xpath('//*[@class="hst"]/img/@src').extract_first()
        bookInfo = response.xpath('//dd[2]/p[2]').extract_first()
        # bookAuthor = response.xpath('//tr[1]/td[1]/text()').extract_first()
        # articleState = response.xpath('//*[@class="hst"]/img/@src').extract_first()
        # bookCateName = response.xpath('//*[@class="hst"]/img/@src').extract_first()
        print(bookInfo)
        # print(bookAuthor)



        pass
    
            



        