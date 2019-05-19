class Beer 
  
  attr_accessor :name, :url, :ratings, :score   
  
  @@all = []
  
  def initialize
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end