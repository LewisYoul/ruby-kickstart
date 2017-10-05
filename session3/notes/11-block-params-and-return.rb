# Methods will raise an error if you give them the wrong number
# of arguments. But blocks will not.
[1,2,3].map { 0 } # => [0, 0, 0]


# A return statement in a method will return from it. But a return
# statement in a proc will return from the enclosing environment.
def first_even(nums)
  nums.each do |num|
    return num if num.even?
  end
  return nil
end
puts first_even [1,5,7,5,600] # => 4


def first_odd(nums)
  nums.each { |n|
    return n if n.odd?
  }
  return nil
end

puts first_odd [2,4,6,7,8] #=> 7
