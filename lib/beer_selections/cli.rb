class Cli 
  
  def call
  #  binding.pry 
    puts "Welcome Beer Lovers!"
    puts "Here's a list of Top Craft Beers!"
    puts "      "
    puts "------------------"
    puts "      "
    
    Scraper.scrape_beer_list
      binding.pry 
  end 
  
  def print_beers
    
  end 
end 