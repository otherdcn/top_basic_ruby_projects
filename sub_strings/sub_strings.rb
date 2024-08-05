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

test_data = [
  "Howdy partner, sit down! How's it going?",
  "I will stick to the permissive ASCII-like output while typing into the the STDIN",
  "Use chown to own then down the blown sown town!",
  "iii howhowhowhow ownownownownown gogogogogogogogogogo"
]

test_data.each do |string|
  puts "\nString: #{string}"
  puts "Dictinary Listing: #{substrings(string,dictionary)}\n\n"
end
