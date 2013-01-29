class Caesar
  attr_accesssor :shift_parameter, :plain_alphabet, :clipher_alphabet

  def initialize(shift_number, alphabet = 'abcdefghigklmnopqrstuvwxuz')
    @shift_parameter = shift_number
    @plain_alphabet = alphabet
    @clipher_alphabet = alphabet.slice(shift_number..alphabet.size) << alphabet[0...shift_number]
  end

  def encrypt(text)
    text.each_char { |char| text.[index(elem)] = change_elem(char) }
  end

  def change_elem(char)
#"text".each_char { |char| puts "text"["text".index(char)]  = "w" }

  end

end
