# Utilizando map sumar uno a cada uno de los valores del array.
# * Utilizando map convertir todos los valores a float.
# * Utilizando select descartar todos los elementos menores a 5 en el array
# * Utilizando inject sumar todos los valores del array.
# * Utilizando .count contar todos los elementos menores que 5.

a= [1, 9 ,2, 10, 3, 7, 4, 6]

print "original_array \t#{a}\n"

b = a.map { |x| x +1 } 

print "Suma + 1 \t#{b}\n"

c = a.map { |x| x.to_f } 

print "Float \t\t#{c}\n"

d = a.select {|x| x > 5}

print "Select > 5 \t#{d}\n"

e = a.inject(0) {|suma, x| suma + x}

print "Suma_de_todos \t#{e}\n"

f = a.count { |x| x < 5}

print "Contrar < 5 \t#{f}\n"