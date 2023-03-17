def decode_char(char)
  keys = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
    'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.',
    'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-',
    'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
  }

  morse_code = keys.key(char)
  return morse_code
end

def decode_word(word)
  arr_word = word.split
  result = ''
  arr_word.each do |ch|
    result += decode_char(ch)
  end
  return result
end

def decode(words)
  array_words = words.split('   ')
  arr = []
  array_words.each do |word|
    arr.push(decode_word(word))
  end
  return arr.join(' ')
end

# Example usage
input_string = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_string = decode(input_string)
puts decoded_string # Output: A BOX FULL OF RUBIES