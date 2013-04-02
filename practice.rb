puts "First question - average\n"


def average(numbers)
  # make sure a numbers isn't empty
  if numbers.empty? 
    raise "Numbers can't be empty"
  end
  
  # make sure that all numbers are numbers
  if numbers.map{ |a| a.is_a?(Integer) || a.is_a?(Float)}.include?(false)
    raise "Must be a number"
  end
  
  numbers.inject(:+) / numbers.length.to_f

end


puts average([5]) == 5.0
puts average([5, 15]) == 10.0
puts average([5, 10, 15]) == 10.0
puts average([5, 6]) == 5.5




puts "\nSecond Question - make cat\n"

def make_cat(cat_name, home_city, age)
  
  unless cat_name.is_a?(String) && home_city.is_a?(String) && age.is_a?(Integer)
    raise "Check yo cat"
  end
  
  return {
    "name" => cat_name,
    "home_city" => home_city,
    "age" => age
  }
end

puts make_cat("Breakfast", "San Francisco", 10) == {
  "name" => "Breakfast",
  "home_city" => "San Francisco",
  "age" => 10
}

puts "\nThird question - average cat age\n"

def average_cat_age(cats)
  average(cats.map{ |a| a["age"] })
end
  

cat1 = make_cat("Breakfast", "San Francisco", 10)
cat2 = make_cat("Earl", "San Francisco", 2)
cat3 = make_cat("Gizmo", "Albany", 12)
cat4 = make_cat("Kiki", "Madison", 15)
puts average_cat_age([cat1, cat2, cat3, cat4]) == 9.75

puts "\nFourth Question - Cats per city\n"

def cats_per_city(cats)
  list = {}
  cats.each do |cat|
    unless list[cat["home_city"]] # if no city, create one with one cat
      list[cat["home_city"]] = 1  
    else # or add a cat to the existing city
      list[cat["home_city"]] += 1
    end
  end
end


cat1 = make_cat("Breakfast", "San Francisco", 10)
cat2 = make_cat("Earl", "San Francisco", 2)
cat3 = make_cat("Gizmo", "Albany", 12)
puts cats_per_city([cat1, cat2, cat3]) == {
   "San Francisco" => 2,
   "Albany" => 1
 }