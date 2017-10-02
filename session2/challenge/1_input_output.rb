# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  #Firstly we store the input from gets in input.
  input = gets
  #Each number should be separated by a space so we can therefore call split on the string to convert to an array. The numbers can now be accessed independently.
  array = input.split
  #Save each of the numbers in separate variables.
  a = array[0].to_i
  b = array[1].to_i
  #Now print them to console.
  puts a + b
  puts a - b
  puts a * b
end
