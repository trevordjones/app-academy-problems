def letter_count(str)
  letter_frequencies = Hash.new(0)
  str.delete(" ").split("").each do |letter|
    letter_frequencies[letter] += 1
  end
  letter_frequencies
end