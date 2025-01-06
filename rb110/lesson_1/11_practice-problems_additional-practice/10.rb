munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
  age = info['age']
  if age >= 65
    info['age_group'] = 'senior'
  elsif age >= 18
    info['age_group'] = 'adult'
  else
    info['age_group'] = 'kid'
  end
end

p munsters

# Or (after reading hint):
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
  age = info['age']
  case age
  when (0..17)
    info['age_group'] = 'kid'
  when (18..64)
    info['age_group'] = 'adult'
  else
    info['age_group'] = 'senior'
  end
end

p munsters
