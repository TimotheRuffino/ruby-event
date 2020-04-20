require 'pry'

class User
  attr_accessor :email, :age #variables d'instance
  
  @@all_user = []
  
    
    def initialize(email_to_save, age_to_save) #initialise les variales
      @email = email_to_save
      @age = age_to_save
      
      @@all_user << {"id": self} #all_user est intégré dans un hash
      
    end

   

    def self.all
      return @@all_user #permet de puts all_user dans le terminal
    end

    def self.find_by_email(email_to_find)
      @@all_user.each do |i|
        return "Voici l'âge de l'utilisateur trouvé avec l'adresse email fournie: #{i.age} ans" if i.email == email_to_find
      end
    end


end

binding.pry

#  User.new("julie@gmail.com", 21)
#      User.new("marc@gmail.com", 30)

#1) Il faut que tu crées une variable de classe @@all_users qui est un array.
#2) Puis, à chaque création d'utilisateur (dans le "initialize"), tu rajoutes le nouvel utilisateur dans cet array (utilise "self" pour faire référence à l'objet créé dans le initialize).
#3) Pour finir, il faut coder une méthode de classe "self.all" qui retourne simplement @@all_users. 
