a = %w(a b c d e)
puts a.fetch(7)
# => IndexError

puts a.fetch(7, 'beats me')
# => 'beats me' # default value used

puts a.fetch(7) { |index| index**2 }
# => 49 # block executed since invalid index referenced

# Ruby docs: http://ruby-doc.org/core-2.4.0/Array.html#method-i-fetch
