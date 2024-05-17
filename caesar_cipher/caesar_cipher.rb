require 'pry-byebug'

def caesar_cipher(str,shift_factor)

  str_array = str.split("")
  cipher_array = []

  str_array.each do |character|
    # Using ordinal number to shift
    if character.ord.between?(48,57) # Shift numbers 0 - 9
      char = character.ord + shift_factor

      # Ensure to wrap from 9 to 0
      until char <= 57
        char -= 10
      end

      cipher_array.push(char.chr)
    elsif character.ord.between?(65,90) # Shift uppercase characters
      char = character.ord + shift_factor

      # Ensure to wrap from Z to A
      until char <= 90
        char -= 26
      end

      cipher_array.push(char.chr)
    elsif character.ord.between?(97,122) # Shift lowercase characters
      char = character.ord + shift_factor

      # Ensure to wrap from z to a
      until char <= 122
        char -= 26
      end

      cipher_array.push(char.chr)
    else # Keep same ordinal place for every other charactor in string
      cipher_array.push(character)
    end
  end

  cipher_str = cipher_array.join
  cipher_str
end

str = "What a string!"
shift_factor = 100
cipher_str = caesar_cipher(str,shift_factor)
puts "String: #{str} ===> Shift #{shift_factor}"
puts "Cipher: #{cipher_str}"

str = "1 2 3 4 5"
shift_factor = 15
cipher_str = caesar_cipher(str,shift_factor)
puts "String: #{str} ===> Shift #{shift_factor}"
puts "Cipher: #{cipher_str}"
