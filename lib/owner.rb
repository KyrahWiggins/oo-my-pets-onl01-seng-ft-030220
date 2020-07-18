class Owner
 attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species, name = nil)
    @species = species
    @name = name
    @pets = {:dogs=> [], :cats=> []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.change_mood("happy")
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.change_mood("happy")
    end
  end


  def sell_pets
    @pets[:dogs].collect do |dog|
      dog.change_mood("nervous")
    end
    @pets[:cats].collect do |cat|
      cat.change_mood("nervous")
    end


  def list_pets
    return "I have #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end 
