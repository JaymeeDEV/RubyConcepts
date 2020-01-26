#!/usr/bin/env ruby

# 'gem install mhartl_palindrome'
require 'mhartl_palindrome' # Use palindrome detector gem

text = File.read("phrases.txt") # Open phrases.txt for reading
text.split("\n").each do |line| # Split content on newlines and iterate through the resulting array
  if line.palindrome?
    puts "palindrome detected: #{line}" # Print any line that's a palindrome
  end
end

# 'ruby reading_files.rb' to run the file
