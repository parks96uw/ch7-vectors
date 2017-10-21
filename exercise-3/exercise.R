# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("gray", "red", "yellow", "blue", "black", "green")

# Use the `sample` function to select a single random marble
# You may have to read documentation for 'sample'
roll <- sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  roll <- sample(marbles, 1)
  win <- guess == roll
  if(win == TRUE) {
    cat("You won!")
  } else {
    cat("You lost!")
  }
}

# Play the marble game!
MarbleGame("green")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
has_won <- FALSE
tries <- 0
while(!has_won) {
  roll <- sample(marbles, 1)
  if (roll == "green") {
    has_won <- TRUE
  } else {
    tries <- tries + 1
  }
}

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of
## tries
total_tries <- 0
total_wins <- 0
for (i in 1:1000) {
  roll <- sample(marbles, 1)
  if (roll == "green") {
    total_wins <- total_wins + 1
  } else {
    total_tries <- total_tries + 1
  }
}
total_tries
total_wins
avg_wins <- total_wins / total_tries

## Is it what you expected based on the probability?
# Yes, probably of winning a game is about 18 - 22%, almost 1/6
