n = ARGV[0].to_i

def parrafo(n)
    n.times do |p|
        p = "\t\tLorem ipsum dolor sit  amet, consectetur adipiscing elit.  Morbi ac  lacinia nibh, nec  faucibusenim.\n 
        \tNullam  quis lorem posuere, hendrerit tellus eget, tincidunt ipsum. Nam nulla  tortor,elementum in elit nec,\n
        \tfermentum dignissim sapien. Sed a mattis nisi, sit amet dignissim elit.Sed  finibus eros  sit  amet ipsum scelerisque interdum.\n
        \tCurabitur justo  nibh, viverra  a  elit  vel,elementum hendrerit erat.  Duis feugiat mattis  ante vel  hendrerit. Etiam nec  nibh nulla.\n
        \tClassaptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n"
        print "\n"
        print p 
    end
    puts
end

parrafo (n)