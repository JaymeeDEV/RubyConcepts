# Create variables
p = "deified"
s = "hello world"

# Split the string into characters, reverse it, and join it back
p == p.split("").reverse.join("")
# true

# Ruby allows you to compare strings forwards and backwards without the split/join
p == p.reverse
# true

# ----------------------------------------------------------------------------------------

# Same functionality written within a function
def palindrome?(string)
  string == string.reverse
end

# Call function with variable 'p'
palindrome?(p)
# true

# Call function with variable 's'
palindrome?(s)
# false

# ----------------------------------------------------------------------------------------

p.palindrome?
# Returns argument error

class String # Editing default data type 'String'
  def palindrome? # No argument because Strings know about themselves
    self == self.reverse
  end
end

# Now we can test the following 
p.palindrome?
# true

s.palindome?
# false    
