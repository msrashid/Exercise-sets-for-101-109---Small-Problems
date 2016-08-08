def palindrome? (x)
    j=x.split("")
    r=[]
    j.each do |y|
        r.unshift(y)
    end
    j==r ? true : false
end