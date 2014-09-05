def word_unscrambler(str, words)
  array_str = str.split("").sort
  anagram_array = []
  words.each do |word|
    if word.split("").sort == array_str
      anagram_array << word
    else
      []
    end
  end
  anagram_array
end