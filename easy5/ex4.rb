require "pry"
def swap (string)
   string.split(" ").map {|w| w[0], w[-1] = w[-1], w[0]; w}.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'