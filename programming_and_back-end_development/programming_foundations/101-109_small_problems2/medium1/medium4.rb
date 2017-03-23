# Input: Integer
# Output: Array or Hash

# Algorithm:
## Get a number n
## Set up Hash
## for 2..n do |i|
### switch n[value] on / off if value % i == 0
## end
## return n

require 'pry'

def lights(n)
  lights_on = (1..n).zip(['on'] * n).to_h
  (2..n).each do |i|
    lights_on.keys.each do |key|
      if key % i == 0
        lights_on[key] == 'on' ? lights_on[key] = 'off' : lights_on[key] = 'on'
      end
    end
  end
  solution = []
  lights_on.each do |key, _|
    solution << key if lights_on[key] == 'on'
  end
  solution
end

# Test cases
p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
