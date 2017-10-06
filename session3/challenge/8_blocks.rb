# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47

############## Original Example
=begin
#create new Person class
class Person
  #getter/setter for the name variable
  attr_accessor :name, :age, :quote

  #initialize method - a block will be passed in as an argument
  def initialize(&initializer)
    @initializer = initializer #save the initializer block in the @initializer instance variable
    initializer.call self #upon instantiation get the initializer variable to call itself setting .name
  end
  #define reinit to re-call the block instantiated with - this will reset to the original .name
  def reinit
    @initializer.call self
  end
end
=end

#create new class Person
class Person
  #getters and setters
  attr_accessor :name, :age, :quote
  #initialize - arguments can either be passed in as a hash or in the block
  #if they are passed in as a hash they are saved in options
  #the block is saved in the @initializer method and then called in the reinit method below.
  #if no block is supplied a Proc.new is called that does nothing. This just stops an error.
  #the block is called using reinit
  def initialize(options=Hash.new, &initializer)
    self.name    = options[:name]
    self.age     = options[:age]
    self.quote   = options[:quote]
    @initializer = (initializer || Proc.new { |person| })
    reinit
  end
  #calling the block defined in the method reinit
  def reinit
    @initializer.call(self)
  end
end

############ MY ATTEMPT - I don't fully understand the Proc.new bit on line 52^^

class Housemate
  attr_accessor :name, :age, :job, :options

  def initialize(options=Hash.new, &initializer)
    self.name = options[:name]
    self.age = options[:age]
    self.job = options[:job]
    self.options = options
    @initializer = (initializer || Proc.new { |person| })
    reinitialize
  end

  def reinitialize
    @initializer.call self
  end
end
=begin
lewis = Housemate.new :name => "Lewis", :age => 28, :job => "Unemployed"

puts lewis.name
puts lewis.age
puts lewis.job
=end
