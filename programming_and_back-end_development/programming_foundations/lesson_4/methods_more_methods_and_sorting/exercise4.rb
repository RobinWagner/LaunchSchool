['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# returns a hash with first letter as key and full element name as
# value { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }
# returns initially given (modified) object
