# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor 'num'

  def initialize(num)
    if num < 0
      @num = 0
    elsif num > 99
      @num = 99
    else
      @num = num
    end
  end

  def convert_to_word
    digit_array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    teen_array = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens_array = ["zero", "ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    @word_array = []

    0.upto(@num) { |i|
      if i <= 10
        @value = digit_array[i].capitalize
      elsif (i > 10) && (i <= 19)
        @value = teen_array[i.to_s[1].to_i].capitalize
      else
        @value = "#{tens_array[i.to_s[0].to_i].capitalize}-#{digit_array[i.to_s[1].to_i]}"
      end
      @word_array << @value
    }
    @word_array
  end

  public
  def print_song
    @temp = @num
    if @temp == 0
      return
    else
      until @temp == 2
        puts "#{convert_to_word[@temp]} bottles of beer on the wall,"
        puts "#{convert_to_word[@temp]} bottles of beer,"
        puts "Take one down, pass it around,"
        puts "#{convert_to_word[@temp-1]} bottles of beer on the wall."
        @temp -= 1
      end
      puts "#{convert_to_word[@temp]} bottles of beer on the wall,"
      puts "#{convert_to_word[@temp]} bottles of beer,"
      puts "Take one down, pass it around,"
      puts "#{convert_to_word[@temp-1]} bottle of beer on the wall."
      @temp -= 1
      puts "#{convert_to_word[@temp]} bottle of beer on the wall,"
      puts "#{convert_to_word[@temp]} bottle of beer,"
      puts "Take one down, pass it around,"
      puts "#{convert_to_word[@temp-1]} bottles of beer on the wall."
    end
  end

end

#test = BeerSong.new 0
#puts test.print_song

# I cannot get this to pass the rake test but as far as I can see it is printing correctly!
