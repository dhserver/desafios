precio_venta = ARGV[0].to_f
usuario = ARGV[1].to_f
gasto = ARGV[2].to_f
u = (precio_venta*usuario)-gasto
impuesto = u * 35 /100

if (u > 0)
    
    puts (u-impuesto).to_i

elsif (u < 0)

    puts u.to_i
    
end
