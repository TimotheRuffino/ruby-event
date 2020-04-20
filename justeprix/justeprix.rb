
puts ("Devinez le prix?")

nombre = gets.chomp.to_i



puts ("Quel prix ?")

prix = gets

if prix <= bonnum
  puts("Bravo t'as gagné")
else
  puts("Perdu ! Réessaye ;-)")
end
  
