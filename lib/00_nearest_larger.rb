def nearest_larger(arr, idx) 
  left = idx - 1
  right = idx + 1
  loop do
    if arr[idx] == arr.max
      return nil
    elsif arr[idx] < arr[left]
      return left
    elsif (arr[idx] > arr[left]) && (arr[idx] > arr[right]) && left != 0
      left = left - 1
      return left
    elsif (arr[idx] > arr[left]) && (arr[idx] > arr[right]) && left == 0
      right = right + 1
      return right
    elsif arr[idx] < arr[right]
      return arr[left]
    end
    left = idx - 1
    right = idx + 1
  end
end