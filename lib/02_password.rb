require 'io/console' #requis pour cacher le mot de passe

def signup
    puts " Définir un mot de passe :"
    print " > "
    pwd = STDIN.noecho(&:gets).chomp #cache le mot de passe
    return pwd
end

def login(pwd)
    puts " veillez entrer votre mot de passe :"
    print "> "
    input = STDIN.noecho(&:gets).chomp #cache le mot de passe

    while input != pwd 
        puts "veillez réessayer :"
        input = gets.chomp
      end
   welcome_screen
end

def welcome_screen   
    puts " bienvenu dans ma zone secrete !!!"
end

def perform
    pwd = signup
    login(pwd)
end
perform