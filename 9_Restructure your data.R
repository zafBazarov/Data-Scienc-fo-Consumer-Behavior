
#################################
## Restructure your Data
####################################

# data

library(readr)
footsize <- read_csv("footsize.csv")

# Rearranging data

sort(footsize$footsize)  # sorts data elements (increasing)

order(footsize$gender)  # returns the ids in order of the (increasing) values

order(footsize$gender, decreasing = TRUE)


##########
## Subsetting a data

# Suppose we would like to subset our footsize data into 2 datasets, one for each gender.

data.female <- subset(footsize, gender == "f")  # columns are known within the subset-function
data.male <- subset(footsize, gender == "m")

# or we just interested in observations with big foots or long foots:

data <- subset(footsize, length >= 190  | footsize > 45,  # "|" this is the or operator:
               select = c(gender) )                      # one or both conditions needs to be fulfilled.
# length= indicating rows to keep, # select = indicating columns to select.

# & -> AND
# | -> OR (ALT+NUMPAD 0 1 2 4; hold ALT while typing numpad numbers)

data_or <- subset(footsize,length >= 190 | footsize > 45, select=c(gender)) # OR

data_or2 <- subset(footsize,length >= 190 | footsize > 45, select=c(gender,length)) # OR

data_and <- subset(footsize,length >= 190 & footsize > 45, select=c(gender)) # AND

# we can also draw a random sample of the data:

data.sample = footsize [sample (1:nrow(footsize), 10, # draw 10 rows
                                replace=FALSE), ]     # No two rows should be the same

################################################
### Exercises
################################################

# Please draw a subset of all observations in the footsize data with a length
# more than 195 and footsize bigger than 46. 

sub1<-subset(footsize, length>195 & footsize>46)

