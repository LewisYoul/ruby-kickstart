# Prompt the user for a number, then read it in and print out "hi" that many times
#
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye


# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2

def hi_hi_goodbye
  #Prompt the user for a number or bye to exit the program
  puts "Please enter a number, or type 'bye' to exit the program"
  #Store that number in a variable. Make sure you convert it to an integer.
  #Multiply hi by the number and print to console.
  #Break from the while loop if the input is "bye"
  #Continue to promt the user until they print bye.
  while number = gets
    puts "hi "*number.to_i
    break if number.chomp == "bye"
    puts "Please enter a number, or type 'bye' to exit the program"
  end
  puts "goodbye"
end



# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__
