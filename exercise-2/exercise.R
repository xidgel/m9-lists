# Exercise 2: `*apply()`

# Create a *list* of 10 random numbers. Use the `runif` function to make a vector of random numbers,
# then use `as.list()` to convert that to a list.
random.list <- as.list(runif(10))

# Use `lapply()` to apply the `round()` function to each number, rounding it to the nearest .1
rounded.list <- lapply(random.list, round, 1)

## Bonus

# Create a variable 'sentence' that has contains a sentence of text (go for something longish).
# Make it lowercase
sentence <- tolower("Now is the time for all good men to come to the aid of their country")

# Use the `strsplit()` function to split the sentence into vector of letters.
# Hint: split on `""` to split on everything
# Note: this will return a _list_ with 1 element (which is the vector of letters)
lletters <- strsplit(sentence, "")

# Extract the vector of letters from the resulting list
vletters <- lletters[[1]]

# Use the `unique()` function to get a vector unique letters
unique.letters <- unique(vletters)
unique.letters

# Define a function CountOccurances that takes in two parameters: a letter and a vector letters.
# The function should return how many times that letter occurs in the vector
# Hint: use a filter!
CountOccurrances <- function(letter, letters) {
  return(length(letters[letters==letter]))
}

# Call your CountOccurances() function to see how many times the letter 'e' is in your sentence.
CountOccurrances("e", vletters)

# Use `sapply()` to apply your CountOccurances() function to each unique letter in the vector to determine its frequency!
# Convert the result into a list (using `as.list`).
letter.frequencies <- as.list(sapply(unique.letters, CountOccurrances, vletters))

# Print the resulting list of frequencies
sapply(letter.frequencies, function(x){x[1]})
