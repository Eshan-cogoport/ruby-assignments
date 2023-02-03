puts "Enter a string"
s=gets.chomp;
puts "Enter the shift"
a=gets.chomp.to_i

def caesar_cipher (s,a)
    res=""
    s.scan(/./) do |c|
        if ("a".."z").include? (c.downcase)
            a.times {c=c.next}
        end
        res<<c[-1]
    end
    return res
end
puts caesar_cipher(s,a)