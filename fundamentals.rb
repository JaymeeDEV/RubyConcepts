# Create variable
p = "deified"

# Split the string into characters, reverse it, and join it back
p == p.split("").reverse.join("")
# true

# Ruby allows you to compare strings forwards and backwards without the split/join
p == p.reverse
# true
