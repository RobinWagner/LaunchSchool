ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject! { |_, age| age > 100 }

# Alternative:
ages.keep_if { |_, age| age < 100 }
