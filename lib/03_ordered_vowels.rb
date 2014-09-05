def ordered_vowel_word?(str)
  vowel = "aeiou"
  array_vowel = []
  array_letters = str.split("")
  array_letters.each do |letter|
    if vowel.include?(letter)
      array_vowel << letter
    end
  end
  if array_vowel == array_vowel.sort
    return true
  else
    return false
  end
end

def ordered_vowel_words(str) 
  if str.split("").include?(" ")
    array_words = str.split(" ")
    new_string = ""
    array_words.each do |word|
      if ordered_vowel_word?(word)
        new_string += word + " "
      end
    end
    return new_string.strip
  elsif ordered_vowel_word?(str)
    return str
  else
    return ""
  end
end