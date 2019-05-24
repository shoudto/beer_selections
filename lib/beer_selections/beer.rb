class Beer 
  
  attr_accessor :name, :url, :company, :style, :beer_info  
  
  @@all = []
  
  def initialize
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end