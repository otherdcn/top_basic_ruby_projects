# Project: Sub Strings

From [The Odin Project](https://www.theodinproject.com/lessons/ruby-sub-strings)

> Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

## Usage
Use the following command to run the application
- from the __root__ folder:
```bash
ruby sub_strings/sub_strings.rb 
```
OR
- from inside the __sub_strings__ folder
```bash
ruby sub_strings.rb
```

## Examples
```
Dictionary: ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

String: Howdy partner, sit down! How's it going?
Dictinary Listing: {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}


String: I will stick to the permissive ASCII-like output while typing into the the STDIN
Dictinary Listing: {"i"=>12}


String: Use chown to own then down the blown sown town!
Dictinary Listing: {"how"=>1, "own"=>6, "down"=>1, "low"=>1}


String: iii howhowhowhow ownownownownown gogogogogogogogogogo
Dictinary Listing: {"i"=>3, "how"=>4, "own"=>5, "go"=>10}
```
