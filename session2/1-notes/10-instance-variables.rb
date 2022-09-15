# Objects store their state in instance variables
# Those are the ones that begin with the @asperand

# Before, we said methods are their own little world.
# That was a lie, they can see instance variables.
# We'll talk more about that in a bit.
class Car
  # we call methods like this a "setter"
  def set_miles(miles)
    @miles = miles
  end

  # we call methods like this a "getter"
  def get_miles
    @miles
  end
end

car = Car.new
car.set_miles 1000
car.get_miles # => 1000

bike = Car.new
bike.set_miles 50
p bike.get_miles

car.instance_variables              # => [:@miles]
car.instance_variable_get '@miles'  # => 1000


# Question: We create our car by calling Car.new
# where is the new method defined?

#so Car is an object and rememeber we are calling the method .new on Car itself on line 19 so its gonna go look it up in Car's class which is class so class defines the method .new so when we do Car.new it goes into class to find the method .new
#the class method defines the method that all classes use
