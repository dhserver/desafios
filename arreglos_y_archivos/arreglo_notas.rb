notas= [5, 7, 1, 3, 5, 8, 9, 'N.A', 'N.A', 3]
def augment(new_notas)
    new_array = []
    acumulador = 0
    new_notas.each do |nota|
        if nota == 'N.A'
            nota = 2
            new_array.push nota
        else 
            new_array.push nota
        end
            
    end
    num = new_array.count 
   
    new_array.each do |add|
        acumulador +=add/num.to_f
        
    end
    print acumulador 

end
augment(notas)
puts