class Cli 
  
  def call
  #  binding.pry 
    puts "Welcome Beer Lovers!"
    puts "Here's a list of Top Craft Beers!"
    puts "      "
    puts "------------------"
    puts "      "
    
    input = ""
    while input != "exit" do 
      puts "Which beer would you like to learn about?"
      puts "Enter the beer number or type 'exit' if you wish not to choose."
      input = gets.strip
    end 
    # html = open("https://www.beeradvocate.com/lists/top/")
    # doc = Nokogiri::HTML(html)
    # binding.pry 
  end 
  
  def print_beers
    
  end 
end 