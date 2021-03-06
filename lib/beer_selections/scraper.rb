class Scraper 
  
  def self.scrape_beer_list
    
    html = open("https://www.beeradvocate.com/lists/top/")
    doc = Nokogiri::HTML(html)
    
      beer_list = doc.css("tr")
      
      beer_list.drop(2).each do |beer|
    
       brew = Beer.new 
       brew.name = beer.css("a").text
       brew.url = beer.css("a").attr('href').value
      
    end
  end 
  
  def self.scrape_beer_details(beer)
    html = open("https://www.beeradvocate.com#{beer.url}")
    doc = Nokogiri::HTML(html)
    beer.company = doc.css("div #info_box a")[0].text
    beer.style = doc.css("div #info_box a")[4].text
    
    beer_n = doc.css(".titleBar h1").text
    beer.beer_name = beer_n.split(" | ").map {|b| b}[0]
    
    info = doc.css("div #info_box")[0].text
    beer.beer_info = info.split(/\n+/).map {|b| b }[9]
    
    beer.abv = info.split(/\n+/).map {|b| b }[6]
    
  end 
end 