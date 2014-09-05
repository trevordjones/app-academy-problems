def letter_count(str)
  hash = {}
  hash_value = 1
  str.gsub(' ', '').split("").each do |pair|
    key,value = pair.split(//)
    unless hash[key]
      hash_value = 1
      hash[key] = hash_value
    else
      hash_value += 1
      hash[key] = hash_value
    end
  end
  return Hash[hash.sort_by &:first] 
end
