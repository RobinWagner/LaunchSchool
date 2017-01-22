s = 'abc'
puts s.public_methods.inspect

# Only display public methods of String (receiver) class:
puts s.public_methods(false).inspect
