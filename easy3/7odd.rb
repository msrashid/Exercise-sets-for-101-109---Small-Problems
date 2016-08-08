#Odd
j=0
oddities.select do |x,y| 
  j==0 ? j=1 : (j=0; false)
end

#Even
r=0
oddities.select do |x,y| 
  r==0 ? (r=1; false) : r=0 
end