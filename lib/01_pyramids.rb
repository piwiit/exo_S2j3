def half_pyramid
puts "Salut, bienvenue dans ma super  moitier de pyramide ! Combien d'étages veux-tu ?"
print "> "
n = gets.chomp.to_i+1
    if n >= 1 && n <= 25
puts "Voici la pyramide :"
        n.times do |i|
            puts ("*"* i).ljust(n)
        end    
        n+=1
    else 
        puts "wrong way !"
    end
end
half_pyramid
    

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
n = gets.chomp.to_i+1
    if n >= 1 && n <= 25
        puts "Voici la pyramide :"
        n.times do |i|
            print " "*(n-i)
            puts (" *"* i)        
        end 
    else 
        puts "wrong way !"
    end
        n+=1
    
end
full_pyramid





def wtf_pyramid
    puts "Entre un nombre d'étage pour ta pyramide ! (impair)"
    print "> "
    n = gets.chomp.to_i
    if n.even? != true

for i in 1...n do
    x = "*" * i
    z = "*" * (i-1)
    puts (x+z).center((n*2)-1)
    i += 1
end
for i in 1..n do
    x = "*" * (n-i)
    y = "*" * (n+1-i)
    puts (x+y).center((n*2)-1)
end

    else
        puts "On a dit impair"
    end
end 
wtf_pyramid