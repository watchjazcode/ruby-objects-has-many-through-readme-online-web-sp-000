class Customer
  
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals 
    Meal.all
  end
  
  def waiters
    collected_waiters = []
    customers.each do |customer|
      collected_waiters << meal.waiter
    end
    return collected_waiter
  end
  
end