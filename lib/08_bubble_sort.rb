def bubble_sort(arr)  
  begin
    swapped = false
    arr.length.times do |number|
      unless arr[number+1] == nil
        if arr[number] > arr[number + 1]
          holder = arr[number]
          arr[number] = arr[number + 1]
          arr[number + 1] = holder
          swapped = true
        end
      end
    end
  end while swapped
  arr
end