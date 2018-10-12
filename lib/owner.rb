require "pry"

class Owner

  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  # Instance methods
 def say_species
    "I am a #{species}."
  end

  def initialize(species)
    @species = species
    @@all << self
    @pets = {cats:[],dogs:[],fishes:[]}
    # binding.pry
  end

 def buy_fish(name)
   @pets[:fishes] << Fish.new(name)
 end

 def buy_cat(name)
  @pets[:cats] << Cat.new(name)
 end

 def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
 end

 def walk_dogs
  #  walks the dogs which makes the dogs' moods happy
  @pets[:dogs].each {|d| d.mood = "happy"}
 end

 def play_with_cats
   @pets[:cats].each {|d| d.mood = "happy"}
 end

 def feed_fish
   @pets[:fishes].each {|d| d.mood = "happy"}
 end

 def sell_pets
   @pets.each { |species|
     species.each { |pet|
       pet.mood = "nervous"
     }
   }
  #  can sell all its pets, which make them nervous
 end

 def list_pets
  #  can list off its pets
 end
  # Class methods


  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end
