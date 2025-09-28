1.
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
length(age)
age

2.
reciprocal <- 1/age
reciprocal

3.
new_age <- c(age, 0, age)
new_age
# This means you're adding a zero in the middle of the age vector and duplicating it.

4. 
sort(age)

5.
min(age)
max(age)

6.
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)

length(data)
data

7.
double_data <- data*2
double_data
#Doubling the vector multiplies each element of data by 2, creating a new vector with scaled values.

8.
integer <- 1:100
numbers <- 20:60
mean_numbers <- mean(numbers)
mean_numbers
sum_int <- sum(51:91)
sum_int
integer_2 <- 1:1000
data_points <- c(length(integer), length(numbers), length(mean_numbers), length(sum_int))
data_points
max <- tail(integer_2, 10)
max

9.
integer_3 <- c(1:100)
filtered <- Filter(function(i) { all (i %% c(3,5,7) != 0) }, integer_3)
filtered

10.
backwards <- seq(100:1)
backwards

11.
natural_numbers <- c(1:24)  
multiples <- natural_numbers [natural_numbers %% 3 == 0 | natural_numbers %% 5 == 0]
multiples

12. 
# If you run the first line and hit enter, R waits for completion (+ prompt). If you close with }, it gives an error:
x <- {0
  + x + 5}
x

13. 
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score[2]
score[3]

14.
a = c(1,2,NA,4,NA,6,7)
print(a,na.print="999")
#The na.print="999" option only changes how NA values are displayed, not the actual values stored in the vector.

15.
x <- c(2,3,4)
class(x) <- "foo"
x
#Changing the class of a numeric vector to "foo" redefines its type label, but the underlying numeric data remains unchanged.
