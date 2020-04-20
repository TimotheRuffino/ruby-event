#Les méthodes fonctionnent toujours de la même manière : elles ont un nom et elles prennent des paramètres en entrée et en sortir elle nous donne d'autres informations

#EXEMPLE : mérhode qui permet de convertir un nombre de seconde en minute
    #d'abord on va envoyer un paramètre qui donnera le nombre de secondes et ensutie ça nous le sortira en minutes 

    def convert_to_min(seconds)   #pour définir une méthode on utilise le mot clé "def" suivi du nom de la méthode / ici le (seconds) est le paramètre
      return seconds / 60 #return = indique ce que l'on doit renvoyer
    end
    
    
    puts convert_to_min(3600)  #ici on rappelle la méthode / Résultat : 60 donc 3600 secondes ça fait 60 minutes
    
    #_________________________________________________________________________________________________________

def bonjour(nom)
  return "Bonjour #{nom}"
end

puts bonjour('Jean')


def convert_to_min(seconds)   
  return 0 if !seconds.is_a? Integer #si le nbr de secondes n'est pas un entier, retourner 0 = permet de couper les calculs d'après
  seconds / 60 
end

#résultat :
puts convert_to_min(4000)  #66
puts convert_to_min("60")  #0


#_____________________________

def convert_to_min(seconds)   
  seconds = seconds.to_i # on converti entier (mieux de l'utiliser) = pour être sûr que seconds soit un entier
  seconds / 60 
end

#______________________________

def salutation(nom, prefix)
  puts "#{prefix} #{nom}"
end

puts salutation('Marc', 'Bonjour') 

#__________________________________________________--

def salutation(nom, prefix = "Bonjour") #permet de rendre Bonjour par défaut, si on en précise une autre dans le puts elle change
  puts "#{prefix} #{nom}"
end

puts salutation('Marc') 


#_________________________________

def liste(*noms) # "*" permet de montrer qu'on est dans une liste donc ont ne connait pas le nombre de paramètre = ça s'appel un splat
  noms.each do |nom|
    puts "- #{nom}"
  end
end

liste("1", "2", "3", "4")


#___________________________________-
#EXEMPLE : organiser liste 

def reorganiser_liste(croissant, *noms)
  noms.sort
end

#organise ordre croissant
reorganiser_liste(true, "1", "2", "3", "4").inspect

#organise ordre décroissant
reorganiser_liste(false, "1", "2", "3", "4").inspect

#REGARDER EXEMPLE VIDEO GRAFIKART à PARTIR DE 15:00