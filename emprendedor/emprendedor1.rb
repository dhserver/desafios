precio_venta = ARGV[0].to_i
usuario = ARGV[1].to_i
gasto = ARGV[2].to_i
u = (precio_venta*usuario)-gasto
impuesto = u * 35 /100

if (u > 0)
    
    puts (u-impuesto)

elsif (u < 0)

    puts u
    
end
