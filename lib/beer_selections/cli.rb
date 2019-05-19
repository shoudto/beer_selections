class Cli 
  
  def call
  #  binding.pry 
    puts "Welcome Beer Lovers!"
    puts "Here's a list of Top Craft Beers!"
    puts "      "
    puts "------------------"
    puts "      "
    
    
    html = open("https://www.beeradvocate.com/lists/top/")
    doc = Nokogiri::HTML(html)
    
      beer_list = doc.css("tr")
      
      beer_list.each do |beer|
        
       # link = beer.css('a').attr('href').value
       
       brew = Beer.new 
       brew.name = beer.css("a").text
    end
      binding.pry 
  end 
  
  def print_beers
    
  end 
end 