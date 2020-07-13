n = ARGV[0].to_i


(n +1).times do |i|

    i *= 2
    if i > 0
        print i
        print " "
    end 
    
end
puts