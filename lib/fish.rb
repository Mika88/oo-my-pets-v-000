require 'pry'
class Fish
    attr_reader :name
    attr_accessor :mood, :owner
    def initialize(name)
      @name = name
      @mood = "nervous"
    end
    def owner_name=(name)
      if (self.owner.nil?)
        self.owner = Owner.new(species)
      else
        self.owner.name = name
      end
    end
end
binding.pry
