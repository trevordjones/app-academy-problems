VOWELS = "aeiou"
def ordered_vowel_word?(str)
  array_vowel = []
  str.split("").each do |letter|
    if VOWELS.include?(letter)
      array_vowel << letter
    end
  end
  return array_vowel == array_vowel.sort
end

def ordered_vowel_words(str) 
  str_array = str.split(" ")
  str_array.each do |word|
    str_array -= [word] unless ordered_vowel_word?(word)
  end
  return str_array.join(" ")
end