item = ARGV[0].to_i
i=0
list= "<ul>\n"

while i < item

    i += 1

    list += "\t<li>#{i}</li>\n"
    
end


puts "#{list}</ul>"
