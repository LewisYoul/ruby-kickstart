# Unlike methods, procs can see the environment they're defined in.
count = 0
incrementer = Proc.new { count += 1 }

count                         # => 0
incrementer.call
count                         # => 1
incrementer.call
count                         # => 2


# They keep the environment they were defined in
# even if they get passed into a new scope.
def invoke_10_times(proc)
  10.times { proc.call }
end

count                         # => 2
invoke_10_times incrementer
count                         # => 12

counter = 100
down_by_2 = Proc.new { counter -= 2 }

=begin
puts counter #=> 100
down_by_2.call
puts counter #=> 98
down_by_2.call
puts counter #=> 96
=end

def invoke_5_times(proc)
  5.times { proc.call }
end

puts counter
invoke_5_times down_by_2
puts counter
