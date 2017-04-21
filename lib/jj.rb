require 'nokogiri'
require 'open-uri'
require 'httparty'
p_id = 18648378
html = HTTParty.get("http://elibrary.ru/item.asp?id=#{p_id}")
						page = Nokogiri::HTML((html), nil, 'UTF-8')
						tab = page.css('table tr td table tr td table tr td table[width="550"]')[1]
						jour = tab.css('font')[2]
						p tab.text
						h = tab.css('tr td a')
					if h.nil? == true
						h = h[0]['href'].to_s
					
						
						if h.split("?")[1][0...5] == "issue"
							h = h.split("=")[1]
						 end
					end
						

autor_id = 531419
html1 = HTTParty.get("http://elibrary.ru/author_items.asp?authorid=#{autor_id}")
		page1 = Nokogiri::HTML((html1), nil, 'UTF-8')

		a = page1.css('div#thepage table tr td table tr td form table tr td table tr td table#restab tr[id]')[3]
			jj = a.css('td font')[2]
			#kk = ""
		jj.css('a').text
		#p jj['href']