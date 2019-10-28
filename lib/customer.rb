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
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    collected_patients = []
    appointments.each do |appointment|
      collected_patients << appointment.patient
    end
    return collected_patients
  end
  
end