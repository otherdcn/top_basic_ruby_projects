def caesar_cipher(str,shift_factor)

  str_array = str.split("")
  cipher_ordinal_array = []

  str_array.each do |letter|
    # Using ordinal number to shift
    if letter.ord.between?(48,57) # Shift numbers 0 - 9
      char = letter.ord + shift_factor

      # Ensure to wrap from 9 to 0
      until char <= 57
        char = (char - 57) + 47
      end

      cipher_ordinal_array.push(char)
    elsif letter.ord.between?(65,90) # Shift uppercase letters
      char = letter.ord + shift_factor

      # Ensure to wrap from Z to A
      until char <= 90
        char = (char - 90) + 64
      end

      cipher_ordinal_array.push(char)
    elsif letter.ord.between?(97,122) # Shift lowercase letters
      char = letter.ord + shift_factor

      # Ensure to wrap from z to a
      until char <= 122
        char = (char - 122) + 96
      end

      cipher_ordinal_array.push(char)
    else # Keep same ordinal place for every other charactor in string
      cipher_ordinal_array.push(letter.ord)
    end
  end

  cipher_chars_array = cipher_ordinal_array.map { |ord| ord.chr }
  cipher_str = cipher_chars_array.join
end

str = "What a string!"
shift_factor = 3
cipher_str = caesar_cipher(str,shift_factor)

puts "String: #{str} ===> Shift #{shift_factor}"
puts "Cipher: #{cipher_str}"
