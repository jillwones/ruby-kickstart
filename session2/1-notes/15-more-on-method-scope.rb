# So methods being their own little world is totally a lie
# They can actually see instance variables and methods
# on their object.

class Example

  def method1
    self # => #<Example:0x00000100868f98>
    @var = 123
    method2 #so with this it calls method2 which reassigns the instance variable @var to 500 so @var below is now 500 and as that is the final object in the block for method1 that is what is returned
    @var # => 500
  end

  def method2
    self # => #<Example:0x00000100868f98 @var=123>
    @var # => 123
    @var = 500
  end

end

Example.new.method1
