# def sum_i(to)
#     val = 0
#     for i in (1..to)
#         if i.even?
#             puts i
#             val += i*2
#         end
#     end
#     return val
# end



n = ARGV[0].to_i

def sum_par(n)
    sum = 0
    for i in (1..n)
        sum += i*2
    end
    puts sum
end 

sum_par(n)