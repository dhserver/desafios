seconds= [100, 50, 1000, 5000, 1000, 500]


def to_minutes(array)
    results = []
    n = array.count
    n.times do |i|
        min = array[i]/60
        results.push min
    end
    results    
end

print to_minutes(seconds)

puts