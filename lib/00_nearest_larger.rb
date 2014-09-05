def nearest_larger(arr, idx)
  
  left_j = idx - 1
  right_j = idx + 1
  loop do
    if arr[idx] == arr.max
      return nil
    elsif arr[idx] < arr[left_j]
      return left_j
    elsif (arr[idx] > arr[left_j]) && (arr[idx] > arr[right_j]) && left_j != 0
      left_j = left_j - 1
      return left_j
    elsif (arr[idx] > arr[left_j]) && (arr[idx] > arr[right_j]) && left_j == 0
      right_j = right_j + 1
      return right_j
    elsif arr[idx] < arr[right_j]
      return arr[left_j]
    end
    left_j = idx - 1
    right_j = idx + 1
  end

end



#answer should be 8


puts nearest_larger([8,2,4,3], 2)