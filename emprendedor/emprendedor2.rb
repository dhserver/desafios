user_n = ARGV[0].to_i
user_p = ARGV[1].to_i
user_f = ARGV[2].to_i
users = (user_n * 1) + (user_p * 2) + (user_f *0)
price = 50
gasto = 20000
f =  price.to_i * users.to_i - gasto.to_i
tax = f * 35 / 100



if f > 0
    puts f - tax
else 
    puts f
end
