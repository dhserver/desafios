# Obtener todos los elementos que excedan los 5 caracteres, utilizando .select.
# Utilizar .map para crear un arreglo con todos los nombres en minúscula.
# Utilizar .select para crear un arreglo con todos los nombres que empiecen con P.
# Utilizando .count, contar los elementos que empiecen con 'A', 'B' o 'C'.
# Utilizando .map, crear un arreglo único con la cantidad de letras que tiene cada no

a = nombres = ['Violeta', 'Andino', 'Clemente', 'Javiera', 'Paula', 'Pía', 'Ray']

print "Array_original \t\t#{a}\n"

b = a.select { |x| x.length > 5}

print "Caract  > 5 \t\t#{b}\n"

c = a.map { |x| x.downcase}

print "Transf_minusc \t\t#{c}\n"

d =  a.select { |x| x.start_with? "P"}

print "Solos con P \t\t#{d}\n"

e = a.count {|x| x.start_with?("A","B","C")}

print "Palabras A,B o C  \t#{e}\n"

f = a.map { |x| x.size }

print "Num_letras \t\t#{f}\n"

