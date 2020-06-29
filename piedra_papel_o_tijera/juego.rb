player = ARGV[0].downcase
pc = rand(0..2)


unless (player =='priedra' || player =='papel' || player == 'tijera')
    puts 'Eso no se vale transposo cara de poto !!'
end

puts pc

if player == 'tijera' && pc == 0
  puts "pc piedra"
  puts "Perdiste"
elsif player == 'tijera' && pc == 1
  puts "pc papel"
  puts "Ganaste"
elsif player == 'tijera' && pc == 2
  puts "pc tijera"
  puts "Empataste"
elsif player == 'piedra' && pc== 0
  puts "pc piedra"
  puts "Empataste"
elsif player == 'piedra' && pc== 1
  puts "pc papel"
  puts "Perdiste"
elsif player == 'piedra' && pc == 2
  puts "pc tijera"
  puts "Ganaste"
elsif player == 'papel' && pc == 0
  puts "pc piedra"
  puts "Ganaste"
elsif player == 'papel' && pc == 1
  puts "pc papel"
  puts "Empataste"
elsif player == 'papel' && pc == 2
  puts "pc tijera"
  puts "Perdiste"
end

