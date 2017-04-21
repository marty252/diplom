require 'nokogiri'
require 'open-uri'
require 'httparty'
def addStatistic(autor_id)
	query = Statistic.where('a_id' => autor_id)
	if !query.nil?
	html = HTTParty.get("http://elibrary.ru/author_profile.asp?id=#{autor_id}")
	page = Nokogiri::HTML(html)
	stat = page.css('div#thepage table tr td table tr td form table tr td table')[3]
	str = stat.css('tr')
	ind = []
	i = 0

	out = [6, 11, 14, 21, 25, 31, 37, 40]
j=3
	while j<=43
		if out.include?(j) == true
			j+=1
		else
		ind[i] = str[j].css('td')[2].text
		j+=1
		i+=1
	end
end
puts ind[17]

		
Statistic.create([{value0:   ind[0].to_i,
		        value1:   ind[1].to_i,
		        value2:   ind[2].to_i,
				value3:   ind[3].to_i,
				value4:   ind[4].to_i,
				value5:   ind[5].split(" ")[0].to_i,
				value6:   ind[6].gsub(",", ".").to_f,
				value7:   ind[7].split(" ")[0].to_i,
				value8:   ind[8].to_i,
				value9:   ind[9].to_i,
				value10:  ind[10].to_i,
				value11:  ind[11].to_i,
				value12:  ind[12].to_i,
				value13:  ind[13].to_i,
				value14:  ind[14].to_i,
				value15:  ind[15].split(" ")[0].to_i,
				value16:  ind[16].split(" ")[0].to_i,
				value17:  ind[17].to_i,
				value18:  ind[18].split(" ")[0].to_i,
				value19:  ind[19].split(" ")[0].to_i,
				value20:  ind[20].split(" ")[0].to_i,
				value21:  ind[21].split(" ")[0].to_i,
				value22:  ind[22].split(" ")[0].to_i,
				value23:  ind[23].split(" ")[0].to_i,
				value24:  ind[24].split(" ")[0].to_i,
				value25:  ind[25].split(" ")[0].to_i,
				value26:  ind[26].split(" ")[0].to_i,
				value27:  ind[27].split(" ")[0].to_i,
				value28:  ind[28].gsub(",", ".").to_f,
				value29:  ind[29].gsub(",", ".").to_f,
				value30:  ind[30].split(" ")[0].to_i,
				value31:  ind[31].split(" ")[0].to_i,
				value32:  ind[32].split(" ")[0].to_i,

				stat5:  ind[5].split("(")[1].gsub(",", ".").to_f,
				stat7:  ind[7].split("(")[1].gsub(",", ".").to_f,
				stat15: ind[15].split("(")[1].gsub(",", ".").to_f,
				stat16: ind[16].split("(")[1].gsub(",", ".").to_f,
				stat18: ind[18].split("(")[1].gsub(",", ".").to_f,
				stat19: ind[19].split("(")[1].gsub(",", ".").to_f,
				stat20: ind[20].split("(")[1].gsub(",", ".").to_f,
				stat21: ind[21].split("(")[1].gsub(",", ".").to_f,
				stat22: ind[22].split("(")[1].gsub(",", ".").to_f,
				stat23: ind[23].split("(")[1].gsub(",", ".").to_f,
				stat24: ind[24].split("(")[1].gsub(",", ".").to_f,
				stat25: ind[25].split("(")[1].gsub(",", ".").to_f,
				stat26: ind[26].split("(")[1].gsub(",", ".").to_f,
				stat27: ind[27].split("(")[1].gsub(",", ".").to_f,
				stat30: ind[30].split("(")[1].gsub(",", ".").to_f,
				stat31: ind[31].split("(")[1].gsub(",", ".").to_f,
				stat32: ind[32].split("(")[1].gsub(",", ".").to_f
				}])
	end
end
	