# In fact, this naming convention for setters and
# getters is so common that there is a method that
# will write them for you.

class Car
  attr_accessor 'miles' #this whole this is the short way of writing the getter and setter methods from the last file
end

Car.instance_methods false # => [:miles, :miles=]

car = Car.new
car.miles = 1000
car.miles # => 1000

car.instance_variables              # => [:@miles]
car.instance_variable_get '@miles'  # => 1000


# attr_accessor is an example of metaprogramming,
# You can write methods yourself like attr_accessor
