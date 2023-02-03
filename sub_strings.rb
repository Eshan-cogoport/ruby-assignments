puts "Enter a string of words"
str=gets.chomp;
puts "Enter a valid dictionary with ',' separator"
dictionary=gets.chomp.split(",");

def substrings(s,d)
    res=Hash.new
    s.scan(/\w+/) { |w| 
        d.each {|sub|
        if w.downcase.include? sub.downcase 
            if res.key?(sub) 
                res[sub]=res[sub]+1
            elsif
                res[sub]=1
            end
        end
        }
    }
    return res
end

puts substrings(str,dictionary)