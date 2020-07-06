a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a > b && a > c 

    print "\n"
    print " A es mayor que B y C , valor de A = #{a} \n "

elsif a > b && a = c

    print "\n"
    print " A y C es mayor que B , valor de A,C = #{a},#{c} \n"

elsif a > c && a = b

    print "\n"
    print " A y B es mayor que  C , valor de A,C = #{a},#{b} \n"
    
elsif b > a && b > c 

    print "\n"
    print " B es mayor que A y C , valor de B = #{b} \n"

elsif b > a && b = c

    print "\n"
    print " B y C es mayor que A , valor de B,C = #{b},#{c} \n"

elsif b > c && b = a

    print "\n"
    print " B y A es mayor que  C , valor de B,A = #{b},#{a} \n"
    

elsif c > a && c > b 

    print "\n"
    print " C es mayor que A y B , valor de C = #{c} \n"

elsif c > a && c = b

    print "\n"
    print " C y B es mayor que A  , valor de C,B = #{c},#{b} \n"

elsif c > b && c = a

    print "\n"
    print " C y A es mayor que B, valor de C,A = #{c},#{a} \n"


    
end