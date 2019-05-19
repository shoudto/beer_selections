class Cli 
  
  def call
  #  binding.pry 
    puts "Welcome Beer Lovers!"
    puts "Here's a list of Top Craft Beers!"
    puts "      "
    puts "------------------"
    puts "      "
    
    Scraper.scrape_beer_list
    print_beers
    input = ""
    while input != "exit" do 
      puts "Choose your appealing BEER! for more info?"
      puts "Enter a number or type 'exit' to exit."
      input = gets.strip
    #  Scraper.beer_list(Beer.all[input-1]) if !
    end 
  end 
  
  def print_beers
     Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
  end 
end 