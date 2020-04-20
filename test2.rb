def ask_first_name
  puts "C'est quoi ton nom ?"
  return first_name
end


def first_name
  first_name = gets.chomp
end


def say_hello
  puts "Hello #{first_name}!"
end

say_hello
