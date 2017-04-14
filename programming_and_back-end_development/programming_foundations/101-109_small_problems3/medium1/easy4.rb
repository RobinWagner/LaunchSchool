def switch_lights(lights_num)
  lights = (1..lights_num).to_a.zip(['on'] * lights_num).to_h
  sequence = 2
  sequence.upto(lights_num) do |i|
    1.upto(lights_num) do |n|
      if n % i == 0
        lights[n] == 'off' ? lights[n] = 'on' : lights[n] = 'off'
      end
    end
  end
  lights_on = lights.select { |key, value| value == 'on' }.keys
  puts "These lights are on: #{lights_on}."
end

# Alternative solution
def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == 'off' ? lights[position] = 'on' : lights[position] = 'off'
      end
    end
  end
end

def on_lights(lights)
  lights.keys.select { |key| lights[key] == 'on' }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = 'off' }
toggle_on_or_off(lights)
p on_lights(lights)

switch_lights(1000)
