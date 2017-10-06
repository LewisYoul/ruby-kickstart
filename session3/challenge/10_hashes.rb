# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)

#define our method which accepts a Hash
def pathify(paths=Hash.new)
  #base case which will be returned if paths is an array (there are no sub directories)
  return paths.map { |path| "/" + path } if paths.is_a? Array

  #generate the array which will be returned containing elements of Strings representing paths
  to_return = []

  #iterate over the paths Hash with k(parent_path) & v(child_dirs)
  paths.each do |parent_path, child_dirs|
    parent_path = "/" + parent_path #simply add a / to the parent_path to represent the beginning of the path
    child_paths = pathify child_dirs   #here we are calling everything that has already been called, now on
                                            #the child_dirs (which will be a hash), therefore returning a path (first step)
                                            #if the remaining child_dirs is an array otherwise returning the parent_path
                                            #and child_dirs.
    child_paths.each do |child_path|        # join each child path to it's parent path
      to_return << (parent_path + child_path) #and add to to_return array.
    end
  end
  to_return #return to_return array
end


=begin INITIAL ATTEMPT

hash = {
  'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }
}
def check_if_hash(hash=Hash.new)
  rtn_arr = []
  hash.each do |k,v|
    if hash[k].is_a? Hash
      rtn_arr << k
      hash = v
    elsif hash[k].is_a? Array
      rtn_arr << v
    end
  end
  puts hash
  rtn_arr
end

puts check_if_hash hash
=end
