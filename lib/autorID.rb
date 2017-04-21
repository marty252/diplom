require 'nokogiri'
require 'open-uri'
require 'httparty'

def addAutorID(autor_id)
	query = Autor.where('a_id' => autor_id)
if !query.nil?
 
	html = HTTParty.get("http://elibrary.ru/author_profile.asp?id=#{autor_id}")
	page = Nokogiri::HTML(html)
	page = page.css("div#thepage table tr td table tr td form table tr td table tr td")
	name = page.css("div font b")[1]
	name = name.text.split(" ")
	si = page.css("div span.aster")
	font = page.css("div font")
	if si.text.empty? == false
		spin = font[-2].text
		si = true
	else
		si = false
	end
a = font[-1]
p si
p spin
p a.text

Autor.create([{
	first_name: name[0],
	second_name: name[1],
	last_name: name[2],
	spin: spin,
	a_id: autor_id,
	science_index: si
	}])
end
end