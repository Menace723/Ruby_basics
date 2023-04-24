dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string . dictionary)
    string.downcase!
    string_array = string.split
    match_array = []
    count_array = []


    dictionary.each do |i|
        if string_array.any? { |s| s.include?(i) }
            match_array.push(i)
        end

        count = string_array.count { |s| s.include?(i)}
        count_array.push(count)
        count_array.delete(0)
    end

result = match_array.zip(count_array).to_h

end

substring ("Howdy partner, sit down! How's it going?", dictionary)