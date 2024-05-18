require 'pry-byebug'

def substrings(str,dictionary)
  substring_hash_listing = Hash.new(0)
  str.downcase.split.each do |word|
    dictionary.each do |substring|
      substring_hash_listing[substring] += word.scan(substring).count if word.include?(substring)
    end
  end
  substring_hash_listing
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Dictionary: #{dictionary}"

str = "Howdy partner, sit down! How's it going?"
puts "String: #{str}"
substring_hash_listing = substrings(str,dictionary)
puts "Dictinary listing: #{substring_hash_listing}"

str = "I will stick to the permissive ASCII-like output while typing into the the STDIN"
puts "String: #{str}"
substring_hash_listing = substrings(str,dictionary)
puts "Dictinary listing: #{substring_hash_listing}"

str = "Use chown to own then down the blown sown town!"
puts "String: #{str}"
substring_hash_listing = substrings(str,dictionary)
puts "Dictinary listing: #{substring_hash_listing}"

str = "iii howhowhowhow ownownownownown gogogogogogogogogogo"
puts "String: #{str}"
substring_hash_listing = substrings(str,dictionary)
puts "Dictinary listing: #{substring_hash_listing}"
