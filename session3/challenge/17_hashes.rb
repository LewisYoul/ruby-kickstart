# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

=begin
head = {:data => 1, :next => nil}
head = {:data => 2, :next => head}
head = {:data => 3, :next => head}
=end

def print_list_in_reverse(list)
  rtn_array = []
  while list
    rtn_array << list[:data]
    list = list[:next]
  end
  rtn_array.reverse.each { |n| puts n }
end

#print_list_in_reverse head
