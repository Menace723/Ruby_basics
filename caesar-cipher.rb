#created arrays that'll be used for the encryption 
def CaesarCipher(string, shift)
    ord_array = []
    cipher_ord_array = []
    cipher_array = []

#making string to all lowercase
    string_array = string.downcase.chars

    #create array of stings ordinals
    for i in string_array 
        ord_array.push(i.ord)
end

#converting letters to numbers and wrapping the string 
for i in ord_array
    if i < 97 || i > 122
    cipher_ord_array.push(i)
    elsif i + shift > 122
        x = i + shift
        y = x - 122
        cipher_ord_array.push(96 + y)
    else cipher_ord_array.push(i + shift)
    end
end

for i in cipher_ord_array
    cipher_array.push(i.chr)
end


#created a message to show the steps of the cipher
puts "your string is : '#{string}'"
puts "which turns into an array : '#{string_array}'"
puts "that turned into ordinal numbers: '#{ord_array}'"
puts "then shifted based on the key number; '#{cipher_ord_array}'"
puts "that get turned back into a new cipher string '#{cipher_array}'"
puts "that gives us the final encrypted message which is: '#{cipher_array.join('')}'"
end

  CaesarCipher("What a string!", 5)
