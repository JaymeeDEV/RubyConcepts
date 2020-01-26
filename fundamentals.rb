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

# ----------------------------------------------------------------------------------------

states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << state.downcase.split.join("-")
  end
  urls
end
p imperative_urls(states)    
# returns ["kansas", "nebraska", "north-dakota", "south-dakota"]
 
# Functional version
states.map { |state| state.downcase.split.join('-') }
# returns ["kansas", "nebraska", "north-dakota", "south-dakota"]

# ----------------------------------------------------------------------------------------

# Objects and classes

class Phrase # Defines a Phrase class
  attr_accessor :content # Allow us to access (“get”) and assign (“set”) to 'content' attribute
      			 # Without this we wouldn't be able to access the content instance variable (NoMethodError)

  def initialize(content)
   @content = content # Initializes the instance variable 'content'
  end
end

# Accessing the Phrase class to create output content
phrase = Phrase.new("Madam, I'm Adam.")
puts phrase.content
# => Madam, I'm Adam.

phrase.content = "Able was I, ere I saw Elba."
puts phrase.content
# => Able was I, ere I saw Elba.

# ----------------------------------------------------------------------------------------
