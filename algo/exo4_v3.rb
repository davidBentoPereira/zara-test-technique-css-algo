# Ecrire une fonction qui prend en argument une liste de nombres non-négatifs
# puis les arrange de façon a faire le plus grand nombre possible.
#  Sans passer par une conversion en string
#
# Par exemple: big([50, 2, 1, 9]) doit donner: 95021
#
# Pro-tip: [3, 34, 302, 50, 31] est un meilleur test que celui ci-dessus.
# => 50 34 31 302 3

def big(arr)
  arr.sort do |a, b|
    # Note :.digits.reverse is not a great solution in terms of performance
    # https://www.alexstrick.com/blog/using-rubys-digits-method
    a_digits, b_digits, continue, result = a.digits.reverse, b.digits.reverse, true, nil

    [a_digits.count, b_digits.count].max.times do |i|
      # If current or previous number has no digit anymore, use value 0.
      # It allows to make the comparison in favor of the existing digit.
      if (a_digits[i] || 0) > (b_digits[i] || 0)
        result = -1
        continue = false
      elsif (b_digits[i] || 0) > (a_digits[i] || 0)
        result = 1
        continue = false
      end
      break unless continue
    end

    result
  end
end

def test1
  puts "[Test 1] big([50, 2, 1, 9]) == [9, 50, 2, 1]"

  if big([50, 2, 1, 9]) == [9, 50, 2, 1]
    puts "[Test 1] Passed 🎉"
  else
    puts "[Test 1] Failed ❌"
  end
  puts ""
end

def test2
  puts "[Test 2] big([3, 34, 302, 50, 31]) == [50, 34, 31, 302, 3]"

  if big([3, 34, 302, 50, 31]) == [50, 34, 31, 302, 3]
    puts "[Test 2] Passed 🎉"
  else
    puts "[Test 2] Failed ❌"
  end
  puts ""
end

def test3
  puts "[Test 3] big([46 ,4057, 4620, 680235, 183048349]) == [680235, 4620, 46, 4057, 183048349]"

  if big([46 ,4057, 4620, 680235, 183048349]) == [680235, 4620, 46, 4057, 183048349]
    puts "[Test 3] Passed 🎉"
  else
    puts "[Test 3] Failed ❌"
  end
  puts ""
end

print test1
print test2
print test3








arr = [3, 34, 302, 50, 31]

test = arr.sort do |a, b|
  a_digits = a.digits.reverse
  b_digits = b.digits.reverse

  i = 0
  continue = true
  result = nil

  while continue
    a_digits[i] = 0 if a_digits[i].nil?
    b_digits[i] = 0 if b_digits[i].nil?

    if a_digits[i] > b_digits[i]
      continue = false
      result = -1
    elsif b_digits[i] > a_digits[i]
      continue = false
      result = 1
    end

    i += 1
  end

  result
end

print test
puts ""
puts test == [50, 34, 31, 302, 3] ? "Test passed !" : "Test Failed"