print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Enter an adverb: "
adverb = gets.chomp

x = [0, 1].sample

if x == 0
puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

if x == 1
puts "I wish I could #{verb} with my #{adjective} #{noun} #{adverb}. It sounds fun!"
end

