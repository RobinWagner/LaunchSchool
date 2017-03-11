def lights(switches)
  lights_on = Hash.new(true)
  1.upto(switches) { |index| lights_on[index] = true }
  2.upto(switches) do |index|
    lights_on.each do |switch, value|
      if switch % index == 0
        lights_on[switch] ? lights_on[switch] = false : lights_on[switch] = true
      end
    end
  end
  result(switches, lights_on)
end

def result(switches, lights_on)
  on_lights = lights_on.select { |key, value| key if lights_on[key] }.keys
  puts "With #{switches} lights, " \
       "#{lights_on.values.count { |x| x }} are left on: " \
       "#{ on_lights.join(', ') }."
end

lights(1000)

# Alternative solution:
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
  lights.keys.select { |key| lights[key] == "on"  }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = "off" }
toggle_on_or_off(lights)
p on_lights(lights)
