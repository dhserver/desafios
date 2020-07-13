n = ARGV[0].to_i

for i in (1..n)
    if i.even? == false
        print "."
    else 
        print "*"
    end
end
puts