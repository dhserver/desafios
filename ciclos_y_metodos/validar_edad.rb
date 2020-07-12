e = rand(1..100)

def validar_edad (edad)
    if  edad >= 18
        print "es mayor\n"
    else
        print "es menor\n"
    end
end

3.times do |i|
    validar_edad e
#    print "#{e}\n"
end