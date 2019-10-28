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
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, total, tip)
  end
  
  def meals 
    Meal.all
  end
  
  def waiters
    collected_waiters = []
    customers.each do |appointment|
      collected_patients << appointment.patient
    end
    return collected_patients
  end
  
end