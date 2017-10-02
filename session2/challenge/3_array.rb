# Write a method named every_other_char for strings that,
# returns an STRING!! containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = ''
    self.split(//).each_with_index {|v, i|
      to_return << v if i.even?
    }
    to_return
  end
end
puts "abcdefghijklmnopqrstuvwxyz".every_other_char
