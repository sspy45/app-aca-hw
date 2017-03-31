def sum_to(num)
  return nil if num < 0
  return 1 if num == 1
  num + sum_to(num - 1)
end

puts "sum_to problems"
p sum_to(5) == 15
p sum_to(1) == 1
p sum_to(9) == 45
p sum_to(-8) == nil

def add_numbers(num_array)
  return num_array.first if num_array.length <= 1
  num_array.first + add_numbers(num_array[1..-1])
end

puts "sum_to problems"
p add_numbers([1, 2, 3, 4]) == 10
p add_numbers([3]) == 3 # => returns 3
p add_numbers([-80, 34, 7]) == -39 # => returns -39
p add_numbers([]) == nil # => returns nil

def gamma_fnc(num)
  return nil if num < 1
  return 1 if num == 1
  (num - 1) * gamma_fnc(num - 1)
end

puts "gamma_fnc problems"
p gamma_fnc(0) == nil # => returns nil
p gamma_fnc(1) == 1 # => returns 1
p gamma_fnc(4) == 6 # => returns 6
p gamma_fnc(8) == 5040 # => returns 5040

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  flavors.first == favorite ? true : ice_cream_shop(flavors[1..-1], favorite)
end

puts "ice_cream_shop problems"
p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') == false # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') == true  # => returns true
p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') == false # => returns false
p ice_cream_shop(['moose tracks'], 'moose tracks') == true # => returns true
p ice_cream_shop([], 'honey lavender') == false # => returns false

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end

puts "reverse string problems"
p reverse("house") == "esuoh"
p reverse("dog") == "god"
p reverse("atom") == "mota"
p reverse("q") == "q"
p reverse("id") == "di"
p reverse("") == ""
