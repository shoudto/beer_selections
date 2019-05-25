class Beer 
  
  attr_accessor :name, :url, :company, :style, :beer_info, :beer_name 
  
  @@all = []
  
  def initialize
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end