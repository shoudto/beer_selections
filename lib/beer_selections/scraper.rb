class Scraper 
  
  def self.scrape_beer_list
    
    html = open("https://www.beeradvocate.com/lists/top/")
    doc = Nokogiri::HTML(html)
    
      beer_list = doc.css("tr")
      
      beer_list.each do |beer|
        
       # link = beer.css('a').attr('href').value
       
       brew = Beer.new 
       brew.name = beer.css("a").text
    end
  end 
  
  def self.scrape_beer_details(beer)
    
  end 
end 