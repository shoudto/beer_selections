class Cli 
  
  def call
  #  binding.pry 
    puts "Welcome Beer Lovers!"
    puts "Here's a list of Top Craft Beers!"
    puts " "
    puts "------------------"
    puts " "
    
    Scraper.scrape_beer_list
    print_beers
    input = ""
    while input != "exit" do 
      puts "Choose your appealing BEER! for more info?"
      puts "Enter a number or type 'exit' to exit."
      puts " "
      input = gets.strip
      Scraper.scrape_beer_details(Beer.all[input.to_i-1]) if !Beer.all[input.to_i-1].company
      
       puts " "
       puts "Beer: #{Beer.all[input.to_i-1].name}" # Beer.all[input.to_i-1].name
       puts "--------------------------------------------------------------------------------"
       puts "Beer Company: #{Beer.all[input.to_i-1].company}" # Beer.all[input.to_i-1].company
       puts  "-------------------------------------------------------------------------------"
       puts "Type of Beer: #{Beer.all[input.to_i-1].style }" # Beer.all[input.to_i-1].style 
       puts " "
    
    end 
  end 
  
  def print_beers
     Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts " "
  end 
end 