seconds= [100, 50, 1000, 5000, 1000, 500]


def to_minutes(array)
    results = []
    n = array.count
    n.times do |i|
        min = array[i]/60
        results.push min
        # if array[i] <= 90
        #     results.push 'bien'
        # elsif array[i] < 90 || array[i] > 180
        #     results.push 'mejorable'
        # elsif array[i] >= 180
        #     results.push 'mal'
        # end
    end
    results    
end

print to_minutes(seconds)

puts