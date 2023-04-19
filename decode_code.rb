# Decode Letter From Morse Code

def decode_char(char)
  morse_alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_alphabet[char]
end

puts decode_char('--')

# Decode a Word Using decode_char function
def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

puts decode_word('-- -.--   -. .- -- .')

# Decode a Sentence Using decode_word function
def decode_sentence(sentence)
  sentence.split('  ').map { |word| decode_word(word) }.join('  ')
end

puts decode_sentence('.-  -... --- -..-   ..-. ..- .-.. .-..   --- ..-.  .-. ..- -... .. . ...')
