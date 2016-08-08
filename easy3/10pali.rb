def palindromic_number? (x)
    j=x.to_s.split("")
    r=[]
    j.each do |y|
        r.unshift(y)
    end
    j==r ? (print "true") : (print "false")
end

palindromic_number?(0001)