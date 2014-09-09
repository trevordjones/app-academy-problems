def nearest_larger(arr, idx) 
  next_highest_number = arr.max + 1
  arr.each do |number|
    if number > arr[idx] && number < next_highest_number
      next_highest_number = number
    end
  end
  arr.index(next_highest_number)
end