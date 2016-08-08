def cleanup(string)
  string.split("").map {|x| x =~ /[A-Za-z]/ ? x : " "}.join("").squeeze(" ")
end
p cleanup("---what's my +*& line?") == ' what s my line '