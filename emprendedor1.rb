precio_venta = ARGV[0].to_f
usuario = ARGV[1].to_f
gasto = ARGV[2].to_f

u = (precio_venta*usuario)-gasto

puts u.to_i