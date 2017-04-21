require 'nokogiri'
require 'open-uri'
require 'httparty'

def addJournal(j_id)
query = Journal.where('jour_id' => j_id)
if !query.nil?

html = HTTParty.get("http://elibrary.ru/title_profile.asp?id=#{j_id}")
page = Nokogiri::HTML(html)
jour = page.css('div#thepage table tr td table tr td form table tr td table tr td div')
city = jour.css('i').text
city = city.to_s
title = jour.css('a font b').text
publ_house = jour.css('a')[1].text

#tmp = publ_house['href'][1].to_i
#p tmp

jour1 = page.css('div#thepage table tr td table tr td form table tr td table')[3]
stat = jour1.css('tr')
num_SI = stat[5].css('td')[9].text
place_SI = stat[6].css('td')[9].text
#place_SI = jour1.css('tr td.midtext a font b')[0].text
if2 = stat[8].css('td')[9].text
if5 = stat[21].css('td')[9].text

Journal.create([{
	name: title,
	jour_id: j_id,
	publishing_house: publ_house,
	city: city[1...-1],
	SI_place: place_SI,
	SI_value: num_SI,
	impact_factor2: if2,
	impact_factor5: if5
	
	}])
end
end
