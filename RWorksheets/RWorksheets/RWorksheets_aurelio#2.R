# 1. Create a vector using : operator
# a. Sequence from -5 to 5. Write the R code and its output.

num <- -5:5
num

# Output 
# [1] -5 -4 -3 -2 -1  0  1  2  3  4  5

# Description:
# The colon (:) operator in R generates a sequence of consecutive integers from -5 up to 5.
# Each number increases by 1. The resulting vector contains 11 elements in total.

# b. x <- 1:7. What will be the value of x?

x <- 1:7
x

# Output
# [1] 1 2 3 4 5 6 7

# Description:
# The variable 'x' holds a numeric vector containing the sequence of integers from 1 through 7.
# The default step size is 1.


# 2. Create a vector using seq() function
# a. seq(1, 3, by=0.2) # specify step size

seq(1, 3, by = 0.2)

# Output
# [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0

# Description:
# The seq() function generates a numeric sequence from 1 to 3, with each value increasing by 0.2.
# The output is a sequence of evenly spaced decimal numbers starting at 1.0 and ending at 3.0.


# 3. A factory has a census of its workers. There are 50 workers in total.

workers_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                 18)

# a. Access 3rd element, what is the value?
workers_age[3]
# Output: 22
# Description:
# The third element in the vector 'workers_age' is 22, representing the age of the third worker.


# b. Access 2nd and 4th element, what are the values?
workers_age[c(2, 4)]
# Output: 28 36
# Description:
# The second and fourth workers have ages 28 and 36 respectively.


# c. Access all but the 1st element (not included). Write the R code and its output.
workers_age[2:50]

# Description:
# This displays all elements of 'workers_age' except for the first value.
# The sequence 2:50 retrieves elements from position 2 through 50, effectively omitting the first worker's age.


# 4. Create a named vector x <- c("first"=3, "second"=0, "third"=9)
x <- c("first"=3, "second"=0, "third"=9)

x[c("first", "third")]

# Output:
# first third 
#     3     9 

# Description:
# The vector 'x' contains named elements: "first", "second", and "third".
# Accessing x[c("first", "third")] retrieves only the elements labeled "first" and "third" with their corresponding values 3 and 9.


# b. Write the code and its output.
x

# Output:
# first second  third 
#     3      0      9 

# Description:
# This prints the entire named vector 'x', showing all three name-value pairs.


# 5. Create a sequence x from -3:2.
x <- -3:2

# a. Modify 2nd element and change it to 0;
x[2] <- 0
x

# Output:
# [1] -3  0 -1  0  1  2

# Description:
# The original vector contained values from -3 to 2.
# The value at position 2 (originally -2) was replaced with 0, resulting in the updated sequence.


# 6. The following data shows the diesel fuel purchased by Mr. Cruz.

# a. Create a data frame for month, price per liter (php), and purchase-quantity (liter).
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

fuel_data <- data.frame(month, price_per_liter, purchase_quantity)

# b. Compute the average fuel expenditure of Mr. Cruz from Jan to June using weighted.mean().
average_price <- weighted.mean(fuel_data$price_per_liter, fuel_data$purchase_quantity)
average_price

# Output:
# [1] 59.2625

# Description:
# The weighted mean accounts for both fuel price and the quantity purchased each month.
# The average price per liter, considering the amount purchased, is approximately ₱59.26.


# 7. The built-in dataset 'rivers' gives the lengths (in miles) of 141 major rivers in North America.

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))

data

# Output (approximate):
# [1] 141.0000 83357.0000 591.1844 425.0000 243908.4086 493.8708 135.0000 3710.0000

# Description:
# The vector 'data' summarizes statistical information about the 'rivers' dataset:
# - Length: Number of observations (141)
# - Sum: Total river lengths (83357 miles)
# - Mean: Average length (≈591.18 miles)
# - Median: Middle value (425 miles)
# - Variance & SD: Measure of variability
# - Min/Max: Smallest and largest river lengths.


# 8. The table below gives the 25 most powerful celebrities and their annual pay (Forbes data).

power_ranking <- 1:25

celebrity_name <- c(
  "Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods",
  "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos",
  "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali",
  "Paul McCartney", "George Lucas", "Elton John", "David Letterman",
  "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson",
  "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant"
)

pay <- c(
  67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55,
  40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31
)

# b. Modify the power ranking and pay of J.K. Rowling (19th element)
power_ranking[19] <- 15
pay[19] <- 90

celebrity_data <- data.frame(
  Ranking = power_ranking,
  Name = celebrity_name,
  Pay = pay
)

print(celebrity_data)

# Description:
# A data frame 'celebrity_data' is created containing 25 rows of celebrity names, rankings, and annual pay (in millions).
# J.K. Rowling’s ranking was updated to 15, and her pay adjusted to 90.
# The table allows easy comparison of pay and ranking among top celebrities.
# For example, Steven Spielberg has the highest pay (332 million), showing that pay does not necessarily determine ranking position.
