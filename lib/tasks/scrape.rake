require 'nokogiri'
require 'open-uri'

task "scrape" => :environment do
  search_page = "http://www.wta.org/go-outside/hikes/hike_search?title=&region=all&subregion=all&rating=0&mileage%3Alist%3Afloat=0.0&mileage%3Alist%3Afloat=25&elevationgain%3Alist%3Aint=0&elevationgain%3Alist%3Aint=5000&highpoint=&searchabletext=&sort=&filter=Search"
  page = Nokogiri::HTML(open(search_page))
  hike_urls = page.css("a.listitem-title").map { |element| element['href'] }
  hike_urls.each do |url|   
    hike_page = Nokogiri::HTML(open(url))
    name = hike_page.css("h1.documentFirstHeading").text
    highest_elevation = hike_page.css("#hike-stats span")[2].text.to_i rescue nil
    elevation_gain = hike_page.css("#hike-stats span")[1].text.to_i rescue nil
    length = hike_page.css("#distance span").text.to_f rescue nil
    latitude = hike_page.css(".latlong span")[0].text.to_f rescue nil
    longitude = hike_page.css(".latlong span")[1].text.to_f rescue nil
    trail = Trail.create_with(highest_elevation: highest_elevation, length: length, elevation_gain: elevation_gain, latitude: latitude, longitude: longitude).find_or_create_by(name: name)
    puts trail.inspect
  end
end