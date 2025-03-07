munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Solution 1
age_sum = 0
munsters.select { |_, info| info['gender'] == 'male' }.each do |_, info|
  age_sum += info['age']
end

p age_sum

# Official Solution
total_male_age = 0
munsters.each_value do |info|
  total_male_age += info['age'] if info['gender'] == 'male'
end

p total_male_age
