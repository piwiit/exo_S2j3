# lancé de dés
def roll_dice
    return rand(1..6)
end
# action en fonction du lancé de dés
def analyze_dice(dice)
    if dice >= 5
        puts " vous avancez"
        return 1
    elsif dice == 1 
        puts "Vous reculez"
        return -1
    else
        puts " vous reste ici"
        return 0
    end
end
# affichage de la marche actuelle
def show_state(num)
    puts "Vous êtes sur la marche n° #{num}"
end
# Vérification si les condition de victoire et rempli 
def is_over?(num)
    if num == 10
        return true
    else
        return false
    end
end

# lier les def entre eux
def play 
    puts "Lancer le jeu !"
    step = 1
    show_state(step) 

    while (!is_over?(step)) do
        puts "taper 'entrée' pour jouer"
        gets.chomp
        print "> "
        step += analyze_dice(roll_dice)
        show_state(step) 
    end 
    puts "Fin de parti BRAVOS !!!!!!"
end
play