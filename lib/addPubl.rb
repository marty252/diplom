require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'cit.rb'


def addPubl(p_id)
puts p_id
html = HTTParty.get("http://elibrary.ru/item.asp?id=#{p_id}")
						page = Nokogiri::HTML((html), nil, 'UTF-8')
						tab = page.css('table tr td table tr td table tr td')
						
						jour = tab.css('table[width="550"] font')[2]
						jour = tab.css('tr td a')
							if jour.nil? == true
								jour = jour[0]['href'].to_s
					
						
									if jour.split("?")[1][0...5] == "issue"
										j_id = jour.split("=")[1]
										addJournal(j_id)
						 			end
							end
						title =  tab.css('table tr td span span.bigtext b').text
puts p_id
	  					org = tab.css('table[width="550"] tr td[width="514"] a')[-1]
	  						if !org.nil?
	  							if org['href'][0..2] == "org"
	  								org = org.text
	  							else
	  								org = ""
	  							end
	  						end	
	  	
						type = page.css('table tr td table tr td table tr td table[width="580"] tr td font')[1]
						puts p_id
						if  !type.nil?
							type = type.text
       						query = Journal.where('jour_id' => j_id).first
							publ = Publication.new
	  						
	   							publ.publ_id = p_id
	   							publ.name = title
	   							publ.ptype = type
	   							publ.organisation = org
	   							publ.journal = query
	   						publ.save
	   						puts publ.publ_id
	   						puts p_id
	   						puts publ.errors.inspect
	   					end
end
	