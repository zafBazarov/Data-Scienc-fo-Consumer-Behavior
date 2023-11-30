
###############################
## Control Flow
################################

###################
## if / else

# if (condition TRUE) {do a thing} else {do a thing}

# examples
var1 <- 5
var2 <- 3
var3 <- 6

if (var1>var2) {print("greater")} else {print("not greater")}  # greater

if (var2>var3) {print("greater")} else {print("not greater")}  # not greater

## ifelse()

# if / else can also be used for whole vectors with the functional ifelse()

# ifelse(test, yes, no)
# test =logical vector
# yes = return values for true elements of test
# yes = return values for false elements of test

# examples:

test1 <- 1:10
test2 <- 5.5

ifelse(test1<test2, c(1,2), c(7,8,9))

ifelse(test1<test2, "True", "False")


########################
## For-loop

## for
# for (iteration in set) {do a thing }

# examples:
for (i in 1:6) { print(i^2)} 

words <- c("This", "is", "a", "loop")
for (k in words) { print(paste(k,k)) }


###############################
## While-Loop
###

# WHILE
#while(condition TRUE) { do a thing }

# an example
i <- 1 
while (i < 20) { 
  print(i)
  i<- 1+i
}

# Make sure the condition becomes FALSE at some point as 
# the loop does not stop otherwise. 

## FUNCTIONS

# you can also built own functions. 

funky.function <- function(a, b, c) { a+b+c+1 }

# and call it in your code

funky.function(1,2,3)   # 7

# All expressions in the bracket will be executed, but only the last calculated 
# value will be returned

funky.function2 <- function() {
  1+1
  2+2
  3+3
}

funky.function2()   # 6

# You can specify the returned value manually by the return function

funky.function3 <- function() {
  return( c(1,2,3))  }

print (funky.function3)


###########################
## Exercises
##############################

# 1. Implement a function that calculates the mean of the elements of vectors.
# (Hint: length(vector))

mean(length(speed))
length(speed)
mean(speed)

# 2. Use a for-loop and an if-expression to check which of the numbers from 1 to 100 are divisible by 7. 

# Way One
for (x in 1:100) {
  if (x%%7 == 0) {
    print(x)
  }
}

# Way Two
for (i in 1:100) {
  test <- i/7
  if(as.integer(test)==test){
    print(i)
  }
}

# Bonus: Without loop of if:
a <- 1:100
a[as.integer(a/7)==a/7]

# Further info: Using "!" in R:
!FALSE
!TRUE
a[!(as.integer(a/7)==a/7)] # get the opposite