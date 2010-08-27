# Useful for defining a hash a single way and being able to look up by key or
# value. For instance:
# 
#   hash = {
#     1 => :foo,
#     2 => :bar
#   }.extend(WithReverseLookup)
#   
#   hash[1] #=> :foo
#   hash[:foo] #=> 1
# 
module WithReverseLookup
  
  def [](key)
    if self.keys.include?(key)
      super
    else
      return self.index(key)
    end
  end
  
end
