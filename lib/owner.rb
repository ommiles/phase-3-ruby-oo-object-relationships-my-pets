class Owner

  @@all=[]
  # @cats=[]

  attr_reader :name, :species

  def initialize(name)
    @name=name
    @species="human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all=[]
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    self.cats<<cat
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    self.dogs<<dog
  end
end