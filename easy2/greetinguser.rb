puts "What is your name?"
Bob=gets.chomp
j=Bob.upcase
j=j.gsub(/[!]/, '')    
Bob=~/!/ ? (puts "HELLO #{j}. WHY ARE WE SCREAMING?") : (puts "Hello #{Bob}.")