class Beer 
  
  attr_accessor :name, :url, :company, :style, :brewer, :abv  
  
  @@all = []
  
  def initialize
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end