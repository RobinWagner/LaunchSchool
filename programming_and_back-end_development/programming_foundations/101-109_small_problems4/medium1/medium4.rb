num_lights = 10
lights = ((1..num_lights).to_a.zip(['on'] * num_lights)).to_h

2.upto(num_lights) do |i|
  1.upto(num_lights) do |n|
    if n % i == 0
      if lights[n] == 'off'
        lights[n] = 'on'
      else
        lights[n] = 'off'
      end
    end
  end
end

p lights
