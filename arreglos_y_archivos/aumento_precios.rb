
def augment(data, mult)
    prices = open(data).read.split(',')
    # print prices
    new_prices = []
    prices.each do |price|
        new_prices.push(price.to_i * mult)
    end
    return new_prices        
end

print "#{augment('precios', 1.2)}\n" 
puts

