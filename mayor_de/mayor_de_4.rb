a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i
d = ARGV[3].to_i

if a > b && a > c && a > d 

   puts "#{a}"


elsif b > a && b > c && b > d

    puts "#{b}"

elsif c > a && c > b && c > d

    puts "#{c}"

elsif d > a && d > b && d > c

    puts "#{d}"

elsif a == b && a == c && a > d

    puts (a + b + c) / 3

elsif a == c && a == d && a > b

    puts (a + c + d) / 3

elsif a == d && a == d && a > c

    puts (a + b + d) / 3

elsif b == a && b == c && b > d

    puts (b + a + c) / 3

elsif b == c && b == d && b > a 
    
    puts  (b + c + d) / 3

elsif b == a && b == d && b > c 

    puts (b + a + d) / 3

elsif c == a && c == b && c > d

    puts (c + a + b) / 3
 
elsif c == b && c == d && c > a 
    
    puts (c + b + d) / 3

elsif c == a && c == d && c > b

    puts (c + a + d) / 3

    
end