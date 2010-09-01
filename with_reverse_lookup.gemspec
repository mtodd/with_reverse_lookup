Gem::Specification.new do |s|
  s.name              = "with_reverse_lookup"
  s.version           = "0.0.1"
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Bidirectional key/value lookup for hashes"
  s.homepage          = "http://github.com/mtodd/with_reverse_lookup"
  s.email             = "mtodd@highgroove.com"
  s.authors           = [ "Matt Todd" ]

  s.files             = %w( README.textile Rakefile )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("test/**/*")

  s.description = <<-description
    Provides a simple modification to existing hashes to provide key lookup
    by value in addition to value lookup by key.
    
    For example:
    
    TABLE = { :key => 1 }.extend(WithReverseLookup)
    
    TABLE[:key] #=> 1
    TABLE[1]    #=> :key
    
    This is mostly useful for lookup tables.
  description
end
