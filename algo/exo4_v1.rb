# Ecrire une fonction qui prend en argument une liste de nombres non-négatifs
# puis les arrange de façon a faire le plus grand nombre possible.
#  Sans passer par une conversion en string
#
# Par exemple: big([50, 2, 1, 9]) doit donner: 95021
#
# Pro-tip: [3, 34, 302, 50, 31] est un meilleur test que celui ci-dessus.
# => 50 34 31 302 3

# Bien tenté ! Mais il faut faire l'exercice sans conversion en String.
def big(arr)
  arr.map(&:to_s).sort.reverse.map(&:to_i)
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