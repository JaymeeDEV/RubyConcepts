#!/usr/bin/env ruby

# 'gem install mhartl_palindrome'
require 'mhartl_palindrome' # Use palindrome detector gem

#-(old) text = File.read("phrases.txt") # Open phrases.txt for reading
#-(old) text.split("\n").each do |line| # Split content on newlines and iterate through the resulting array

lines = File.readlines("phrases.txt") # Readlines method does the same thing without needing the additional split
lines.each do |line|
  if line.palindrome?
    puts "palindrome detected: #{line}" # Print any line that's a palindrome
  end
end

# Writing to files - Joining the array and writing the resulting string to palindromes_file.txt

# Use select method to create an array of all the palindromes
# Because the palindrome? method is called on each line, we can use the 'symbol-to-proc' notation
palindromes = lines.select(&:palindrome?)
File.write('palindromes_file.txt', palindromes.join)

# 'ruby reading_files.rb' to run the file
