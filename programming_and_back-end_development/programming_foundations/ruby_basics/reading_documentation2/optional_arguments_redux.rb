require 'date'

puts Date.new
# => -4712-01-01
puts Date.new(2016)
# => 2016-01-01
puts Date.new(2016, 5)
# => 2016-05-01
puts Date.new(2016, 5, 13)
# => 2016-05-13

# Ruby docs (Standard library API documentation):
# http://ruby-doc.org/stdlib-2.4.0/libdoc/date/rdoc/Date.html#method-c-new
