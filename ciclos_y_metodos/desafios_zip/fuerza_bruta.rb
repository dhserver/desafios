p = ARGV[0] 
f = "a"
i=0
while f != p 
    f = f.next 
    i += 1
    # puts i
end

puts "#{i.to_s} intentos tu password es  #{f}"
