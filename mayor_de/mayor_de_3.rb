a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a > b && a > c 

   puts "#{a}"


elsif b > a && b > c 

    puts "#{b}"

elsif c > a && c > b 

    puts "#{c}"

elsif a == b && a > c

    puts ( a + b)/2

elsif a == c && a > b

    puts (a + c)/2

elsif b == a && b > c

    puts (b + a)/2

elsif b == c && b > a 
    
    puts  (b + c)/2

elsif c == a && c > b

    puts (c + a)/2
 
elsif c == b && c > a 
    
    puts (c + a)/2

    
end