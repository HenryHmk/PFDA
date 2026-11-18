# Lab 1, Parts 3 and 4: CSV files, data frames and data from a web address
# Run one line at a time with Ctrl+Enter and read the Console.

# Task 3.2: read the file with read.table()
movies <- read.table("movies.csv", header = TRUE, sep = ",")
movies
read.table("movies.csv", sep = ",")

# Task 3.3: read the file with read.csv()
movies <- read.csv("movies.csv")
movies

# Task 3.4: describe the data frame
class(movies)
dim(movies)
str(movies)

# Task 3.5: pick out a column with the dollar sign
movies$rating
movies$title
sum(movies$minutes)

# Task 3.6: pick out values with square brackets
movies[3, 5]
movies[3, ]
movies[, "genre"]
movies[1:2, c("title", "rating")]

# Task 3.7: add a column
movies$hours <- movies$minutes / 60
movies

# Task 3.8: save the data frame to a CSV file
write.csv(movies, "movies_hours.csv", row.names = FALSE)

# Task 4.1: read the data from a web address
url <- "https://raw.githubusercontent.com/APU-General/ct127/main/data/student_performance_metrics.csv"
students <- read.csv(url)
head(students)
dim(students)
str(students)

# Task 4.2: list the distinct values of a column
unique(students$Department)
unique(students$Hometown)
length(unique(students$Department))

# Task 4.3: turn a column into a factor
levels(factor(students$Attendance))
students$Attendance <- factor(students$Attendance, levels = c("Below 40%", "40%-59%", "60%-79%", "80%-100%"))
levels(students$Attendance)
class(students$Attendance)

# Task 4.4: turn more columns into factors
students$Gender <- factor(students$Gender)
students$Hometown <- factor(students$Hometown)
levels(students$Gender)
levels(students$Hometown)
