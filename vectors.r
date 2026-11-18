# Lab 1, Part 2: data types and vectors
# Run one line at a time with Ctrl+Enter and read the Console.

# Task 1.2: open a script and run a line
print("Hello, R")

# Task 2.1: check the type of a value
class(7)
class(7L)
class("movie")
class(TRUE)

# Task 2.2: create a vector
ratings <- c(7.4, 8.1, 7.9, 6.8, 7.2)
ratings
class(ratings)
length(ratings)

# Task 2.3: mix types in a vector
c(1, "two", TRUE)

# Task 2.4: add up the values
sum(ratings)
minutes <- c(112, 98, 134, 105, 126)
sum(minutes)

# Task 2.5: add up logical values
watched <- c(TRUE, TRUE, FALSE, TRUE, FALSE)
sum(watched)
