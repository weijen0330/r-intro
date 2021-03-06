# An exercise for working with basic data in R

# Create a vector `students` with three names in it
students <- c('Rashmi', 'Amelia', 'Allen')

# Create a vector `math.grades` that represents grades for each person (0 - 100 scale)
math.grades <- c(97, 95, 96)

# Create a vector `spanish.grades` that represents grades for each person (0 - 100 scale)
spanish.grades <- c(90, 91, 88)

# Use the `data.frame` function to combine `students`, `math.grades`, and `spanish.grades` into a variable `people`
people <- data.frame(students, math.grades, spanish.grades)
View(people)

# Calculate a new column `average` which is the average grade across courses
# Hint: calculate the average manually, not with any functions
people$average <- (people$math.grades + people$spanish.grades) / (ncol(people) - 2)
View(people)

# Which student(s) had the highest average grade?
#                                   row                                  , column
highest.avg.grade.student <- people[people$average == max(people$average), 'students']
# or just look at the vector you want: people$student[people$average == max(people$average)]

# Which students had lower spanish grades than math grades?
lower.spanish.grade.student <-people[people$spanish.grades < people$math.grades, 'students']

# Plot the relationship between math and spanish grades using the `plot` function
plot(people$students, people$average)

