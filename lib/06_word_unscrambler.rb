def word_unscrambler(str, words)
  sorted_string = str.split("").sort
  anagram_array = []
  words.each do |word|
    if word.split("").sort == sorted_string
      anagram_array << word
    else
      []
    end
  end
  anagram_array
end