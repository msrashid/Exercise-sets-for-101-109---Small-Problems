array=[]
for i in 1..6 do
    if(i==6)
        puts "Enter the last number:"
        j=gets.chomp.to_i
        array.select{|k, v| v==j} ? (puts "The number #{j} appears in #{array}") : (puts "The number #{j} does not appear in #{array}")
    else
    puts "Enter the #{i}st number:"
    array << gets.chomp.to_i
    end
end