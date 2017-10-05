# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos(str)
  rtn_hash = {}

  arr = str.split(' ')

  arr.each_with_index do |e, i|
    if rtn_hash.has_key? e
      true
    else
      rtn_hash[e] = i
    end
  end
  rtn_hash
end

#puts first_pos "zero one two three four four four seven"
