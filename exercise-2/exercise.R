# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  result <- paste("The difference in lengths is", if (length(v1) - length(v2) < 0) {
    length(v2) - length(v1)
  } else {
    length(v1) - length(v2)
  })
  return(result)
}
# Pass two vectors of different length to your `CompareLength` function
len.one <- c(1,2,3)
len.two <- c(1,2,3,4,5,6)
CompareLength(len.one, len.two)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1,v2) {
  result <- if (length(v1) - length(v2) > 0) {paste("Your first vector is longer by", length(v1) - length(v2), "elements")
  } else {paste("Your second vector is longer by", length(v2) - length(v1), "elements")}
  return(result)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(len.one, len.two)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference <- function(v1,v2) {
  result <- if (length(v1) - length(v2) > 0) {
    vector.name <- deparse(substitute(v1))
    paste("Vector", vector.name, "is longer by", length(v1) - length(v2), "elements")
  } else {
    vector.name <- deparse(substitute(v2))
    paste("Vector", vector.name, "is longer by", length(v2) - length(v1), "elements")
    }
  return(result)
}

DescribeDifference(len.one, len.two)
