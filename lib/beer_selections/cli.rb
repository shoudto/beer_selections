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
    doc.css("tr").each do |beer|
      text = beer.css("a").text
      url = beer..css("a").attr('href').value
       binding.pry 
    end
  end 
  
  def print_beers
    
  end 
end 