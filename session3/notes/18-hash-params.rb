# If we wanted to pass a bunch of options to a method,
# we might use a hash table.
def same_case( str , options = Hash.new )
  return str.upcase if options[:upcase]
  return str.upcase if options[:downcase] == false
  str.downcase
end

same_case 'UPPER lower'                         # => "upper lower"
same_case 'UPPER lower', { :upcase   => false } # => "upper lower"
same_case 'UPPER lower', { :downcase => true  } # => "upper lower"
same_case 'UPPER lower', { :downcase => false } # => "UPPER LOWER"
same_case 'UPPER lower', { :upcase   => true  } # => "UPPER LOWER"


# The problem is that this looks an awful lot like a block.
# But this is such a common use case that syntactic sugar was added.
# You can now place hash arguments at the end of your regular list,
# and they will be collected into the last argument
same_case 'UPPER lower'                       # => "upper lower"
same_case 'UPPER lower' , :upcase   => false  # => "upper lower"
same_case 'UPPER lower' , :downcase => true   # => "upper lower"
same_case 'UPPER lower' , :downcase => false  # => "UPPER LOWER"
same_case 'UPPER lower' , :upcase   => true   # => "UPPER LOWER"

###########################

def make_same_case( string, options = Hash.new)
  return string.upcase if options[:upcase]
  return string.upcase if options[:downcase] == false
  string.downcase
end

puts make_same_case "UP down" #=> up down
puts make_same_case "UP down", :upcase => true #=> UP DOWN
puts make_same_case "UP down", :upcase => false #=> up down
puts make_same_case "UP down", :downcase => true #=> up down
puts make_same_case "UP down", :downcase => false #=> UP DOWN
