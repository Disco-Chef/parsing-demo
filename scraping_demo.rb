require 'open-uri'

require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
puts "Give me an ingredient and I will give you recipe names!"
print ">"
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".standard-card-new__article-title").each do |element|
  puts element.text
end
