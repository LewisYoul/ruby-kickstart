# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(str)

  rtn_hash = Hash.new { |hash, key| hash[key] = 1 }

  str.downcase.split(' ').each do |v|
    if rtn_hash.has_key? v
      rtn_hash[v] += 1
    else
      rtn_hash[v]
    end
  end
  rtn_hash
end

#puts word_count "split me me up up up"
