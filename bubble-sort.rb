def bubbleSort arr 

    num = arr.length

    loop do 
        sorted = false

        (num - 1).times do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                sorted = true 
            end 
        end
        break if not sorted
    end
    arr 
end

x = [1,2,3,2,10,6,45,6,33,3]
p bubbleSort(x)