class Beer 
  
  attr_accessor :name, :url, :company, :style, :beer_info, :beer_name, :abv 
  
  @@all = []
  
  def initialize
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  # add a class method that takes an input, a string, and returns an array of all the beer objects (instances) that have the given string in their nmae 
  # call the method self.find_all_by_name
  # exact match is fine for a first draft
  #  BONUS but preferabluy a loose match that's case insensitive
  
  def self.find_all_by_name(name)
    matching_beer = [] 
    # first live coding exercise 
    self.all.each do |beer|
      if name == beer.name 
        matching_beer << beer.name 
      end 
    end
    matching_beer
  end 
end