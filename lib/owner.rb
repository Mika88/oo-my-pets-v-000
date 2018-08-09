require 'pry'
class Owner

  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes:[], cats:  [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end
  def self.reset_all
    self.all.clear
  end

  def say_species
     "I am a #{self.species}."
  end

  def buy_fish(name)
      fish = Fish.new(name)
    self.pets[:fishes] << fish
    self.pets
  end
  def buy_cat(name)
      cat = Cat.new(name)
    self.pets[:cats] << cat
    self.pets
  end
  def buy_dog(name)
      dog = Dog.new(name)
    self.pets[:dogs] << dog
    self.pets
  end
  def walk_dogs
    self.pets[:dogs].each do |pet|
    Dog.mood == "happy"
    end
    Dog.mood
  end
end
binding.pry
