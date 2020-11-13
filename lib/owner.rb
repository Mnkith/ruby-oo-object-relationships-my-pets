class Owner

  @@all = []
  attr_reader :name, :species, :cats, :dogs, :dogs, :cats
  attr_accessor 
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  def add_me(pet)
    pet.class == Cat ? @cats << pet : @dogs << pet
  end
  def say_species
    "I am a #{self.species}."
  end

  def self.all 
    @@all
  end

  def self.count 
    @@all.length
  end

  def self.reset_all
    @@all.clear 
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end
  
  
  def walk_dogs
    change_moods(@dogs, 'happy')
  end
  
  def feed_cats
    change_moods(@cats, 'happy')
  end
  
  def sell_pets
    @cats.each {|cat| cat.mood = 'nervous'; cat.owner = nil}
    @dogs.each {|cat| cat.mood = 'nervous'; cat.owner = nil}
    cats.clear
    dogs.clear
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
  private
  def change_moods(pets, mood)
    pets.each {|dog| dog.mood = mood}
  end
end