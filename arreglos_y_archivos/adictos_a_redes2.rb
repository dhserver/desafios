

def scan_addicts2(array)
    results = []
    n = array.count
    n.times do |i|
        if array[i] <= 90
            results.push 'bien'
        elsif array[i] < 90 || array[i] > 180
            results.push 'mejorable'
        elsif array[i] >= 180
            results.push 'mal'
        end
    end
    results    
end

print scan_addicts([120, 50, 600, 30, 90, 10, 200, 0, 500])

puts