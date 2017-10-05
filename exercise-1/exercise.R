# Exercise 1: writing and executing functions

# Write a function `AddThree` that adds 3 to an input value


# Create a variable `ten` by passing 7 to your `AddThree` function


# Write a function `FeetToMeters` that converts from feet to meters


# Create a variable `height.in.feet` that is your height in feet


# Create a variable `height.in.meters` by passing `height.in.feet` to your `FeetToMeters` function

AddThree <- function(a) {
  return (3+a)
}
ten <- AddThree(7)
FeetToMeters <- function(a) {
  return (.3048*a)
}
height.in.feet <- 65/12
height.in.meters <- FeetToMeters(height.in.feet)
