# Ecrire une fonction qui prend en argument une liste de nombres non-négatifs puis les arrange de façon a faire le plus grand nombre possible.
#
# Par exemple: big([50, 2, 1, 9]) doit donner: 95021
#
# Pro-tip: [3, 34, 302, 50, 31] est un meilleur test que celui ci-dessus.
# 50 34 31 302 3

def big(arr)
  arr.map(&:to_s).sort.reverse
end

print big([50, 2, 1, 9])
puts ""
print big([3, 34, 302, 50, 31])
