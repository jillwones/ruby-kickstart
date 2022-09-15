# Using set_whatever and get_whatever is kind of
# distracting. It's better to name your setters
# and getters the same as the variable they represent.

class Car
  def miles=(miles) #the equals is part of the method name
    @miles = miles
  end

  def miles
    @miles
  end
end

Car.instance_methods false # => [:miles=, :miles]

car = Car.new
car.miles = 1000  # Ruby knows this is the miles= method, so this looks like im assigning the car variable, miles, 1000 but im actually invoking the miles= method which sets the instance variable inside it to 1000
car.miles         # => 1000


#so from the outside we are always calling methods, even if they seem like variables then inside we are storing them as instance variables
