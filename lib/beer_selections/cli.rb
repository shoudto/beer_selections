class Cli 
  
  def call
    puts " "
    puts "Welcome Beer Lovers!"
    puts "Here's a list of Top Craft Beers!"
    puts " "
    puts "----------------------------------"
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
      
      if (1..Beer.all.count).include?(input.to_i) 
        Scraper.scrape_beer_details(Beer.all[input.to_i-1])
        puts " "
        puts "Beer: #{Beer.all[input.to_i-1].beer_name}"
        puts "-------------------------------------------------------------------------------"
        puts "Beer Company: #{Beer.all[input.to_i-1].company}" 
        puts "-------------------------------------------------------------------------------"
        puts "Type of Beer: #{Beer.all[input.to_i-1].style }"  
        puts "-------------------------------------------------------------------------------"
        puts "#{Beer.all[input.to_i-1].abv}"
        puts "-------------------------------------------------------------------------------"
        puts "Beer info:"
        puts " "
        puts "#{Beer.all[input.to_i-1].beer_info}"
        puts " "
        puts " "
        puts "******************NEXT BEER CHOICE********************"
        puts " "
        
      elsif input != "exit"
        puts " "
        puts "INVALID! please try again.".colorize(:color => :white, :background => :red)
        puts " "
    end 
   end 
  end 
  
  def print_beers
     Beer.all.each.with_index(1) do |beer, index|
      puts "#{index}. #{beer.name}"
    end
    puts " "
  end 
end 
