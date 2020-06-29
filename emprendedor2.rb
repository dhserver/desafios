precio_venta = ARGV[0]
usuario = ARGV[1]
usuario_p = ARGV[2]
usuario_g = ARGV[3]
gasto = ARGV[4]

u = (precio_venta*usuario)-gasto

if (u >=0)
    u
    
end

puts u.to_i