# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

#say num = 10

def staircase(n)
  #create the hash that is to be returned
  return_hash = {}
  #iterate through each number upto number provided
  1.upto n do |current|
    next if current.even? #go to next number if current is even - we want to return the odd numbers as keys in the hash
    all_nums = Array.new(current) { |i| i + 1 } #An array is created of length current. i in block refers to the index of each value. result of block is stored in array
    even_nums = all_nums.select { |i| i.even? } #selects only the even nums from all_nums array and stores in even_nums
    return_hash[current] = even_nums #stores the current odd number as key in hash, and the even_nums array as its value
  end
  return_hash
end
