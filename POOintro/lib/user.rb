require "pry"

#class User
 # def greet
  #  puts "Bonjour, monde !"
  #end

  #def say_hello_to_someone(first_name)
   # puts "Bonjour, #{first_name} !"
  #end

#end #fin de ma classe

#binding.pry
#puts "end of file"

####################################################

#class User
 # def show_itself
  #  print "Voici l'instance : "
  #  puts self
  #end

#end

#binding.pry
#puts "end of file"

##################################################

#class User

 # def update_email(email_to_update)
  #  @email = email_to_update
  #end

  #def read_email
   # return @email
  #end

#end

#binding.pry
#puts "end of file"

##################################################

#class User
 # attr_writer :mastercard #à mettre en en-tête de ta classe

  #def read_mastercard
   # return @mastercard
  #end
#end

#binding.pry
#puts "end of file"

##################################################

#class User
  #attr_reader :birthdate

  #def update_birthdate(birthdate_to_update)
   # @birthdate = birthdate_to_update
  #end
#end

#binding.pry
#puts "end of file"

####################################################

#class User
  #attr_accessor :email
#end

#binding.pry
#puts "end of file"

####################################################

#class User
 # attr_accessor :email

  #def initialize(email_to_save)
   # @email = email_to_save
    #puts "On envoie un email de Bienvenue !!"
  #end
#end

#binding.pry
#puts "end of file"

####################################################

#class User
 # attr_accessor :email
  #@@user_count = 0 # on initialise la variable de classe qui sera un compteur du nombre d'instance

  #def initialize(email_to_save)
   # @email = email_to_save
    #@@user_count = @@user_count + 1 # un utilisateur vient d'être créé : on ajoute donc 1 au compteur
  #end
#end

#################################################

class User
  attr_accessor :email
  @@user_count = 0 # on initialise la variable de classe

 def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1
  end

  def self.count
    return @@user_count
  end
end

binding.pry
puts "end of file"

################################################ méthodes privées / méthodes publiques

#class User
 # attr_accessor :email #on définit une variable d'instance lisible et modifiable

  #def initialize(email_to_save) #on définit un initialize
   # if check_email(email_to_save) # on vérifie l’e-mail proposé via une méthode check_email (cf plus bas)
    #  @email = email_to_save #si l’e-mail passe le check => on le sauve dans l'instance
    #else
     # puts "ERREUR ! EMAIL FOIREUX. Recommence" #si l’e-mail ne passe pas le check => message d'erreur
    #end
  #end

  #def check_email(email_to_save)
    # du code pour vérifier le format de l’e-mail (on ne rentre pas dans le détail)
    # si l’e-mail est ok, ça renvoie TRUE. Sinon FALSE
  #end

#end



#class User
 # def truc_public
  #  # on peut faire julie.truc_public
  #end

  #private #Toutes les méthodes en dessous de cette balise seront privées. A mettre en bas de ta classe donc !

  #def truc_private
    # impossible de faire julie.truc_private
  #end

#end

