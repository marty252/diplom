require 'nokogiri'
require 'open-uri'
require 'json'
require 'httparty'
require 'addPubl'



def createCit(p_id)
	raise p_id.to_s if p_id.blank?
		#jour = restab.css('td font')[2]
		#jour = jour.css('a').text

		#id = restabs["id"].to_s
	#if id[0] != "b"
	#			p_id = id.gsub(/[^0-9]/, "")
	
		html2 = HTTParty.get("http://elibrary.ru/cit_items.asp?gritemid=#{p_id}")
		
		
		page1 = Nokogiri::HTML((html2), nil, 'UTF-8')
		page1.css('table tr td table tr td table tr td form table#restab tr').each_with_index do |restab, i|
			next if i ==0
			
  		sleep Random.new.rand(1..2)	
  		id = restab["id"].to_s
  		
			if id[0] != "b"
				c_id = id.gsub(/[^0-9]/, "")
				c = Citation.create({
					cit_id: c_id
					})
			
				query = c
				query1 = Publication.where('publ_id' => p_id).first
				query2 = Publication.where('publ_id' => c_id).first
				puts c_id, p_id, query1.inspect, query2.inspect

				if query2.nil?
					addPubl(c_id)
					query2 = Publication.where('publ_id' => c_id).first
				end

				cp = CitationsPublication.create({
					publication_id: p_id,
					citation_id: c_id,
					publ_id: query1,
					cit_id: query2
					})
			end
				
						
end
end	


