require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'cit'
require 'addPubl'




def createPubl(autor_id)
	publ_count = 0

	html = HTTParty.get("http://elibrary.ru/author_items.asp?authorid=#{autor_id}")
	page = Nokogiri::HTML(html)
	a = page.css('div#thepage table tr td table tr td form table tr td table tr td div table tr td.redref b font').text
	publ_count = a.to_i

	
	if (publ_count%20 == 0)
		page_count = publ_count/20
	else
		page_count = publ_count/20 + 1
	end

	
	for page_num in 1..page_count
    puts "page_count: #{page_count}, page_num: #{page_num}"

		html1 = HTTParty.get("http://elibrary.ru/author_items.asp?authorid=#{autor_id}&pagenum=#{page_num}")
		page1 = Nokogiri::HTML((html1), nil, 'UTF-8')

		#raise page1.inspect
		page1.css('div#thepage table tr td table tr td form table tr td table tr td table#restab tr[id]').each do |restab|
	  		sleep Random.new.rand(1..2)
			

			cc = restab.css('td.select-tr-right').text
			
			id = restab["id"].to_s
			if id[0] != "b"
				puts cc
			
				p_id = id.gsub(/[^0-9]/, "")
				if cc != "\r\n0"
					createCit(p_id)
				end
				query = Publication.where('publ_id' => p_id)
				query = query.first
				

				if query.nil?
					addPubl(p_id)
		   		end

			end
		end
	end
end

#f2 = File.new("index.rb", 'w')
#f2.puts JSON.pretty_generate(restabs)
