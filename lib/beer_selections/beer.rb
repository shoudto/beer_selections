class Beer 
  
  attr_accessor :name, :url, :rating, :score, :brewer   
  
  @@all = []
  
  def initialize
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end