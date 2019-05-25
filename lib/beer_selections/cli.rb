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
    pick_your_craft
  end 
  
  
  def pick_your_craft
    
    input = ""
    while input != "exit" do 
      
      puts "Choose your appealing BEER! for more info?"
      puts "Enter a number or type 'exit' to exit."
      puts " "
      
      input = gets.strip.downcase
      Scraper.scrape_beer_details(Beer.all[input.to_i-1]) if !Beer.all[input.to_i-1].company
      unless input == 'exit'
      puts " "
      puts "Beer: #{Beer.all[input.to_i-1].name}" # Beer.all[input.to_i-1].name
      puts "--------------------------------------------------------------------------------"
      puts "Beer Company: #{Beer.all[input.to_i-1].company}" # Beer.all[input.to_i-1].company
      puts  "-------------------------------------------------------------------------------"
      puts "Type of Beer: #{Beer.all[input.to_i-1].style }" # Beer.all[input.to_i-1].style 
      puts " "
      puts "#{Beer.all[input.to_i-1].beer_info}"
      end # end of the conditional unless
    end # end of while loop
  end 
  
  def print_beers
     Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts " "
  end 
end 