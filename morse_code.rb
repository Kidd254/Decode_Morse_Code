class DecodeMorseCode
  MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I',   '.---'  => 'J',   '-.-'   => 'K',   '.-..'  => 'L',
    '--' => 'M',   '-.'    => 'N',   '---'   => 'O',   '.--.'  => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }.freeze

  def self.decode_character(morse_character)
    MORSE_CODE[morse_character] || ''
  end

  def self.decode_word(morse_word)
    morse_word.split(' ').map { |morse_character| decode_character(morse_character) }.join
  end

  def self.decode(msg)
    words = msg.split('   ')
    words.map { |word| decode_word(word) }.join(' ')
  end
end

message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = DecodeMorseCode.decode(message)
puts decoded_message
