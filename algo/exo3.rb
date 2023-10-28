# Écrire une fonction qui calcule les 100 premiers nombres de Fibonacci.
# Fibonacci commence avec 0 et 1 et chaque nombre suivant est calculé comme étant la somme des deux précédents.
#
# Le début de la liste sera donc: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, …].

def bentonacci
  arr = [0, 1]

  while arr.size < 100
    arr << arr[-1] + arr[-2]
  end

  arr
end

puts "There is #{bentonacci.size} numbers in the Bentonacci array :"
print bentonacci
