def generate_possibilities(expression, numbers, target, current_sum, current_index)
  if current_index == numbers.length
    # Si la somme actuelle correspond à la cible, afficher l'expression
    puts expression if current_sum == target
    return
  end

  # Ajouter le nombre actuel avec un signe '+' à l'expression
  generate_possibilities("#{expression}+#{numbers[current_index]}", numbers, target, current_sum + numbers[current_index], current_index + 1)

  # Ajouter le nombre actuel avec un signe '-' à l'expression
  generate_possibilities("#{expression}-#{numbers[current_index]}", numbers, target, current_sum - numbers[current_index], current_index + 1)

  # Ajouter le nombre actuel en le collant à l'expression
  generate_possibilities("#{expression}#{numbers[current_index]}", numbers, target, current_sum * 10 + numbers[current_index], current_index + 1)
end

def find_possibilities(numbers, target)
  # Commencer avec le premier nombre comme expression initiale
  initial_expression = numbers[0].to_s
  initial_sum = numbers[0]

  # Appeler la fonction récursive pour générer les possibilités
  generate_possibilities(initial_expression, numbers, target, initial_sum, 1)
end

# Utiliser la fonction avec les nombres 1 à 9 et la cible 100
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
target = 100

print find_possibilities(numbers, target)
