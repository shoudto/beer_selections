class Beer 
  
  attr_accessor :name, :type, :price, :url  
  
  @@all = []
  
  def initialize
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end