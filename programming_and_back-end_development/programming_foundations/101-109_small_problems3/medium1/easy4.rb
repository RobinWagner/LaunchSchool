
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

switch_lights(1000)
