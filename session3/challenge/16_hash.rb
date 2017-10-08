# Print to stdout, each element in a hash based linked list.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# print_list head                    # >> "1\n"
# head = {:data => 2, :next => head}
# print_list head                    # >> "2\n1\n"
# head = {:data => 3, :next => head}
# print_list head                    # >> "3\n2\n1\n"
# head = {:data => 4, :next => head}
# print_list head                    # >> "4\n3\n2\n1\n"
# head = {:data => 5, :next => head}
# print_list head                    # >> "5\n4\n3\n2\n1\n"
# head = {:data => 6, :next => head}
# print_list head                    # >> "6\n5\n4\n3\n2\n1\n"


head = {:data => 1, :next => nil}
head = {:data => 2, :next => head}
head = {:data => 3, :next => head}

puts head[:next]



#in this method we want to continue printing out the contents of :data until
#there is no data left to be printed (the base :next is set to nil)
#the boolean value of nil is false
def print_list(list)
  while list
    puts list[:data] #print out the value assigned to the data key for each node in the list
    list = list[:next] #assign the next node to the list variables
  end                   #this means that the next time list[:data] is printed the next value down the node will be puts to stdout
end


print_list head
