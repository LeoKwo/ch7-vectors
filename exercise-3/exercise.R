# Exercise 3: vector practice

# Create a vector `words` of 6 (or more) words.
# You can Google for a "random word generator" if you wish!
words <- c("one", "two", "three", "four", "five", "six")

# Create a vector `words_of_the_day` that is your `words` vector with the string
# "is the word of the day!" pasted on to the end.
# BONUS: Surround the word in quotes (e.g., `'data' is the word of the day!`)
# Note that the results are more obviously correct with single quotes.
words_of_the_day <- paste(words, " is the word of the day")

# Create a vector `a_f_words` which are the elements in `words` that start with 
# "a" through "f"
# Hint: use a comparison operator to see if the word comes before "f" alphabetically!
# Tip: make sure all the words are lower-case, and only consider the first letter
# of the word!
letters[seq(from=1, to=6)]
a_f_words <- vector()
for (i in range(1:6)) {
  a_f_words <- c(words[startsWith(words, letters[i])], a_f_words)
}
# Create a vector `g_m_words` which are the elements in `words` that start with 
# "g" through "m"
letters[seq(from=7, to=13)]
g_m_words <- vector()
for (i in range(7:13)) {
  g_m_words <- c(words[startsWith(words, letters[i])], g_m_words)
}

# Define a function `word_bin` that takes in three arguments: a vector of words, 
# and two letters. The function should return a vector of words that go between 
# those letters alphabetically.
word_bin <- function(vec, char_A, char_B)
  pool <- seq(from=numbers[char_A], to=numbers[char_B])
  result <- vector()
  for (i in range(numbers[char_A]:numbers[char_B])) {
    result <- c(vec[startsWith(vec, pool[i])], result)
  }
  return result

# Use your `word_bin` function to determine which of your words start with "e" 
# through "q"
word_bin(words, "e", "q")
