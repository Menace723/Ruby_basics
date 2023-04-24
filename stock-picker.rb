def picker(prices)

    prices_hash = {}
    prices.each_index { |i| prices_hash[i] = prices[i] }

    prices_hash_keys = prices_hash.keys

    output_hash = {}
    prices.each_index { |i| output_hash[i] = [] }

    prices_hash.each do |k, v|
        c = 1
        whicle c <= prices_hash.length - prices_hash_keys.index(k) -1 do 
            output_hash[k] << v - prices_hash[k + c]
            c += 1
        end
    end

    lowest_array = []
    output_hash.each do |k, v|
        lowest_array << v.min 
    end

    lowest_array.compact!
    buy_day = buy_day + output_hash[buy_day].index(output_hash[buy_day].min) + 1
end

picker([17, 3, 6, 9, 8, 15, 6, 1, 10])
