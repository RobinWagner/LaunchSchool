munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |name, criteria|
  if criteria["age"].between?(0, 17)
    criteria["age_group"] = "kid"
  elsif criteria["age"].between?(18, 64)
    criteria["age_group"] = "adult"
  else
    criteria["age_group"] = "senior"
  end
end

# Alternative:
munsters.map do |name, criteria|
  case criteria["age"]
  when 0..17
    criteria["age_group"] = "kid"
  when 18..64
    criteria["age_group"] = "adult"
  else
    criteria["age_group"] = "senior"
  end
end
