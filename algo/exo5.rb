# Écrire une fonction qui affiche toutes les possibilités de faire 100 avec les nombres 1 2 3 4 5 6 7 8 9 dans cet ordre
# en mettant entre eux seulement des -, + ou en collant les nombres.
#
# Par exemple: 1 + 2 + 34 – 5 + 67 – 8 + 9 (= 100)

def possibilities
  results = []
  combinations = []
  target = 9

  # Define the list of possible operators
  operators_list = [
    ["+", "+"],
    ["-", "+"],
    ["-", "-"],
    ["", "+"],
    ["", "-"],
    ["+", ""],
    ["-", ""],
    ["", ""]
  ]

  # Find all the possible results
  operators_list.each do |operators|
    if operators[0].empty? && operators[1].empty?
      result = 123
      combination = [123]
    elsif operators[0].empty?
      result = 12.send(operators[1], 3)
      combination = [12, operators[1], 3]
    elsif operators[1].empty?
      result = 1.send(operators[0], 23)
      combination = [1, operators[0],23]
    else
      result = 1.send(operators[0], 2).send(operators[1], 3)
      combination = [1, operators[0], 2, operators[1], 3]
    end

    # If result == target, store the combination
    combinations << combination if result == target

    results << result
  end

  {
    combinations: combinations,
    results: results,
  }
end

print "Results: #{possibilities[:results]}"
puts ""
print "Combinations: #{possibilities[:combinations]}"
