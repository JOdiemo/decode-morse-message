# rubocop:disable Metrics/MethodLength
def decode_char(char)
  morse_char = { '.-' => 'A',
                 '-...' => 'B',
                 '-.-.' => 'C',
                 '-..' => 'D',
                 '.' => 'E',
                 '..-.' => 'F',
                 '--.' => 'G',
                 '....' => 'H',
                 '..' => 'I',
                 '.---' => 'J',
                 '-.-' => 'K',
                 '.-..' => 'L',
                 '--' => 'M',
                 '-.' => 'N',
                 '---' => 'O',
                 '.--.' => 'P',
                 '--.-' => 'Q',
                 '.-.' => 'R',
                 '...' => 'S',
                 '-' => 'T',
                 '..-' => 'U',
                 '...-' => 'V',
                 '.--' => 'W',
                 '-..-' => 'X',
                 '-.--' => 'Y',
                 '--..' => 'Z' }
  morse_char[char]
end
# rubocop:enable Metrics/MethodLength

def decode_word(word)
  morse_word = ' '
  word.split.each do |item|
    morse_word = "#{morse_word}#{decode_char(item)}"
  end
  morse_word
end

def decode_sentence(word)
  word.split('  ').map { |morse_word| decode_word(morse_word) }.join
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_sentence('-- -.--   -. .- -- .')
