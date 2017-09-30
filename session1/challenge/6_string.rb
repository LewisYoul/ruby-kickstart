# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  even_array = []
  odd_array = []

  temp_array = string.split(//)

  temp_array.each_with_index { |v, i|
  if i.even?
    even_array << v
  else
    odd_array << v
  end
  }

  if return_odds == true
    odd_array.join
  else
    even_array.join
  end
  
end
