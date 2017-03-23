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

# Alternative solution
def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == "off" ? lights[position] = "on" : lights[position] = "off"
      end
    end
  end
end

def on_lights(lights)
  lights.keys.select { |key| lights[key] == "on" }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = "off" }
toggle_on_or_off(lights)
p on_lights(lights)

# Test cases
p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000)
