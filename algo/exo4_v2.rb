# Ecrire une fonction qui prend en argument une liste de nombres non-négatifs
# puis les arrange de façon a faire le plus grand nombre possible.
#  Sans passer par une conversion en string
#
# Par exemple: big([50, 2, 1, 9]) doit donner: 95021
#
# Pro-tip: [3, 34, 302, 50, 31] est un meilleur test que celui ci-dessus.
# => 50 34 31 302 3

def big(arr)
  arr.count.times { arr = sort(arr) }
  arr
end

def sort(arr)
  result = []

  arr.each_with_index do |curr_numb, index|
    # Note :.digits.reverse is not a great solution in terms of performance
    # https://www.alexstrick.com/blog/using-rubys-digits-method
    digits_curr_number = curr_numb.digits.reverse
    prev_number = result[-1]
    digits_prev_number = result[-1]&.digits&.reverse

    if prev_number.nil?
      result << curr_numb
      next
    end

    i = 0
    continue = true

    while continue
      # If current or previous number has no digit anymore, set it's value to 0
      # This will allow to make the comparison in favor of the existing digit
      digits_prev_number[i] = 0 if digits_prev_number[i].nil?
      digits_curr_number[i] = 0 if digits_curr_number[i].nil?

      # If one of the digit is greater than the other, we stop the loop and push the greatest number in the result array
      if digits_curr_number[i] > digits_prev_number[i]
        result.insert(index - 1, curr_numb)
        continue = false
      elsif digits_curr_number[i] < digits_prev_number[i]
        result << curr_numb
        continue = false
      end

      i += 1
    end
  end

  result
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