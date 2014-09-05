def morse_encode(str)
  morse_encode_word(str)
end

def morse_encode_word(word)
  morse = {
    "A" => ".-",
    "B" => "-...",
    "C" => "-.-.",
    "D" => "-..",
    "E" => ".",
    "F" => "..-.",
    "G" => "--.",
    "H" => "....",
    "I" => "..",
    "J" => ".---",
    "K" => "-.-",
    "L" => ".-..",
    "M" => "--",
    "N" => "-.",
    "O" => "---",
    "P" => ".--.",
    "Q" =>  "--.-",
    "R" => ".-.",
    "S" => "...",
    "T" => "-",
    "U" => "..-",
    "V" => "...-",
    "W" => ".--",
    "X" => "-..-",
    "Y" => "-.--",
    "Z" => "--.."
  }
  letters = word.split("")
  morse_code = letters.map { |letter| morse[letter.upcase] }
  morse_code.join(" ")
end