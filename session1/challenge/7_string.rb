# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  #This is the string that will be returned at the end, we will be pushing letters to it.
  to_return = ""

  #We need to create a variable that will change to true or false after each iteration depending on the letter of the current iteration. We will set this to false initially because the first character doesn't have one preceeding it.
  add_next = false


  #Now we need to iterate through the string, each time adding the current character to the return string if add_next is true.
  string.length.times { |x|
  to_return << string[x] if add_next
  #Here we change the value of add_next to either true or false depending on whether the current character is an r or R.
  add_next = (string[x] == "r" || string [x] == "R")
  }

  to_return

end
