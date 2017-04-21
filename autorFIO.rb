require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'uri'

url = "http://elibrary.ru/author_profile.asp&surname=Радыгин"
URI::encode url
html = HTTParty.get(url)
page = Nokogiri::HTML((html), nil, 'UTF-8')
puts page.css
