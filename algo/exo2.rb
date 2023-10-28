# Écrire une fonction qui combine deux listes en une seule en alternant les éléments.
#
# Par exemple, combine([:a, :b, :c], [1, 2, 3]) doit renvoyer [:a, 1, :b, 2, :c, 3].

def combine(arr1, arr2)
  max_size = [arr1.count, arr2.count].max
  max_size.times.map { |i| [arr1[i], arr2[i]] }.flatten.compact
end

### UNIT TESTS

def test_combine_2_arrays_with_same_number_of_items
  print result = combine([:a, :b, :c], [1, 2, 3])
  puts ""
  expected = [:a, 1, :b, 2, :c, 3]

  if result == expected
    puts "Test 1 passed 🎉"
  else
    puts "Test 1 failed ❌"
  end
end

def test_combine_2_arrays_with_differents_numbers_of_items
  print result = combine([:a, :b, :c, :d, :e], [1, 2, 3])
  puts ""
  expected = [:a, 1, :b, 2, :c, 3, :d, :e]

  if result == expected
    puts "Test 2 passed 🎉"
  else
    puts "Test 2 failed ❌"
  end
end

def test_combine_2_arrays_with_differents_numbers_of_items_2
  print result = combine([:a, :b ], [1, 2, 3])
  puts ""
  expected = [:a, 1, :b, 2, 3 ]

  if result == expected
    puts "Test 3 passed 🎉"
  else
    puts "Test 3 failed ❌"
  end
end

test_combine_2_arrays_with_same_number_of_items
puts ""
test_combine_2_arrays_with_differents_numbers_of_items
puts ""
test_combine_2_arrays_with_differents_numbers_of_items_2