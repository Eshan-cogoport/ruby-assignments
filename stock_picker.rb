puts "Enter the stock prices Enter -ve value to exit"
price=Array.new
input=gets.chomp.to_i
while input>0
    price.push(input)
    input=gets.chomp.to_i
end

def stocks(price)
    index=price.length
    max_profit=0
    max=index-1
    sell_day=index-1
    buy_day=index-1
    price.length.times{
        index-=1;
        if price[index]>price[max]
            max=index
        end
        if price[max]-price[index]>=max_profit
            buy_day=index
            sell_day=max
            max_profit=price[max]-price[index]
        end
    }
    return [buy_day,sell_day,max_profit]
end

puts "[#{stocks(price)[0]},#{stocks(price)[1]}] for a profit of $#{price[stocks(price)[1]]}-$#{price[stocks(price)[0]]}==$#{stocks(price)[2]}"