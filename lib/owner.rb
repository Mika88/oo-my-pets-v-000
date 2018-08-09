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

end
