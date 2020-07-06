a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a > b && a > c 

    print "\n"
    print " A es mayor que B y C , valor de A = #{a} \n "
    
elsif b > a && b > c 

    print "\n"
    print " B es mayor que A y C , valor de B = #{b} \n"
    

elsif c > a && c > b 

    print "\n"
    print " C es mayor que A y B , valor de C = #{c} \n"


    
end