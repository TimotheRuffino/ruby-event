

def pyramid 
  puts "Combien d'étages tu veux Ramses ?"
  etage = gets.chomp.to_i

  rien = 0
  dies = 0
  i = 1

  while i <=etage && i >= 1 && i <= 25
    print rien * i
    print dies * i
    i = i + 1
    rien = " "
    dies = "#"
    etage = etage - 1
  end
end

pyramid