puts "Enter the size of array"
n=gets.chomp.to_i
arr=Array.new(n)
puts "Enter the array elements"
i=0
n.times{
    input=gets.chomp.to_i
    arr[i]=input
    i+=1
}

def bubblesort(arr)
    i=0
    n=arr.length
    while i<n do
        j=i
        while j<n-i-1 do
            if arr[j].to_i > arr[j+1].to_i
                temp=arr[j]
                arr[j]=arr[j+1]
                arr[j+1]=temp
            end
            j+=1
        end
        i+=1
    end
    return arr
end
puts ""
puts bubblesort(arr)