$:.unshift(File.join(File.dirname(__FILE__), '..'))
require 'lib/with_reverse_lookup'

puts "Running tests..."
puts ""

# setup test data
hash = {
  1 => :yes,
  0 => :no
}

puts "Test data: #{hash.inspect}"
puts ""

# extend hash
hash.extend(WithReverseLookup)

# run test 1
puts "1. Should find hash[1] as :yes"
puts hash[1] == :yes ? 'PASS' : 'FAIL'
puts ""

# run test 2
puts "2. Should find hash[0] as :no"
puts hash[0] == :no ? 'PASS' : 'FAIL'
puts ""

# run test 3
puts "3. Should find hash[2] as nil"
puts hash[2] == nil ? 'PASS' : 'FAIL'
puts ""

# run test 4
puts "4. Should find hash[:yes] as 1"
puts hash[:yes] == 1 ? 'PASS' : 'FAIL'
puts ""

# run test 5
puts "5. Should find hash[:no] as 0"
puts hash[:no] == 0 ? 'PASS' : 'FAIL'
puts ""

# run test 4
puts "4. Should find hash[:foo] as nil"
puts hash[:foo] == nil ? 'PASS' : 'FAIL'
puts ""

puts "Finished."
