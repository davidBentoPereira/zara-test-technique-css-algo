# Écrire 3 fonctions qui calculent la somme des nombres dans une liste utilisant 3 façons différentes (while, each, recursion en ruby)

def sum_using_while(arr)
  i, sum = 0, 0

  while i < arr.size
    sum += arr[i]
    i += 1
  end

  sum
end

puts sum_using_while([1, 2, 3]) # => 6


def sum_using_each(arr)
  (0..arr.size).each.sum { |i| i }
end

puts sum_using_each([1, 2, 3]) # => 6

# I didn't know how to do it, so I learned through this tutorial : https://www.geeksforgeeks.org/recursion-in-ruby/
def sum_using_recursion(arr)
  return 0 if arr.empty?

  sum = arr.pop

  sum + sum_using_recursion(arr)
end

puts sum_using_recursion([1, 2, 3]) # => 6
