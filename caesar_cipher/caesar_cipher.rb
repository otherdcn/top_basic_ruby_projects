require 'pry-byebug'

def caesar_cipher(str, shift_factor)
  str_array = str.split('')
  cipher_array = []

  str_array.each do |character|
    # Using ordinal number to shift
    if character.ord.between?(48, 57) # Shift numbers 0 - 9
      char = character.ord + shift_factor

      # Ensure to wrap from 9 to 0
      char -= 10 until char <= 57

      cipher_array.push(char.chr)
    elsif character.ord.between?(65, 90) # Shift uppercase characters
      char = character.ord + shift_factor

      # Ensure to wrap from Z to A
      char -= 26 until char <= 90

      cipher_array.push(char.chr)
    elsif character.ord.between?(97, 122) # Shift lowercase characters
      char = character.ord + shift_factor

      # Ensure to wrap from z to a
      char -= 26 until char <= 122

      cipher_array.push(char.chr)
    else # Keep same ordinal place for every other charactor in string
      cipher_array.push(character)
    end
  end

  cipher_array.join
end

test_data = {
  one: { string: "What a string!", shift_factor: 5 },
  two: { string: "1 2 3 4 5", shift_factor: 15 },
  three: { string: "The quick brown fox jumps over the lazy dog.", shift_factor: 2 }
}

test_data.each_value do |data|
  cipher = caesar_cipher(data[:string], data[:shift_factor])
  puts "String: #{data[:string]} ===> Shift factor: #{data[:shift_factor]}"
  puts "Cipher: #{cipher}\n\n"
end
