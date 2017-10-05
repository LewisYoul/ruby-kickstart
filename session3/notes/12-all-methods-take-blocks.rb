# When you pass a block as a parameter, the block gets put into
# a special slot that every method has, whether they use the
# block or not.
def method
  "result"
end
method {} # => "result"
method    # => "result"


# To access the block, use the ampersand, this will
# give it to you as a proc that you can use.
def method2(&block)
  block.call.upcase
end
method2 { 'from the block' } # => "FROM THE BLOCK"


# If you didn't pass a block, it will be set to nil.
def method3(&block)
  if block
    "The block evaluates to #{block.call}"
  else
    "No block."
  end
end
method3 { ":)" }  # => "The block evaluates to :)"
method3           # => "No block."


# Like with any proc, you can pass arguments to it
def heres_six(&block)
  block.call 6
end
result = heres_six { |num| "#{num*2} is Josh's favourite number"}
result # => "12 is Josh's favourite number"

def block_no_block(&block)
  if block
    "The block you provided evaluates to #{block.call}"
  else
    "You didn't provide a block dummy! That means it was set to nil."
  end
end

puts block_no_block { 1 + 2 }
puts block_no_block

def five_in_here(&block)
  block.call 5
end

puts five_in_here { |n| n*3 } #=> 15
