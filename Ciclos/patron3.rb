n = ARGV[0].to_i

n.times do |i|

    r = i%6

    if r == 0 || r == 1

        print "."

    elsif r == 2 || r == 3

        print "*" 
    
    elsif r == 4 || r == 5

        print "|" 

    end
end

print "\n"