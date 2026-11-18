url <- "https://raw.githubusercontent.com/APU-General/ct127/main/data/student_performance_metrics.csv"
students <- read.csv(url)

# Lab 1, Parts 5 and 6: statistics, missing values, selecting, combining and creating data
# The two lines above read the data again, so this script runs on its own.

# Task 5.1: find the mean and the median
mean(students$Overall)
median(students$Overall)

# Task 5.2: calculate with a missing value
marks <- c(3.2, NA, 3.8, 4)
mean(marks)
mean(marks, na.rm = TRUE)
is.na(marks)

# Task 5.3: compare NA and NULL
length(c(3.2, NA, 3.8))
length(c(3.2, NULL, 3.8))
students$Height

# Task 5.4: count missing values in the data
sum(is.na(students$Overall))
sum(is.na(students))

# Task 6.1: select rows and columns with subset()
cse <- subset(students, Department == "Computer Science and Engineering")
dim(cse)
top <- subset(students, Overall >= 3.5, select = c(Department, Overall))
dim(top)

# Task 6.2: build a second data frame by hand
# Every c() below holds five values: row 1 is the first value of every column.
ba <- data.frame(
  Department  = c("Business Administration", "Business Administration", "Business Administration", "Business Administration", "Business Administration"),
  Gender      = c("Male", "Female", "Male", "Male", "Female"),
  HSC         = c(4.17, 4.92, 5, 4, 2.19),
  SSC         = c(4.84, 5, 4.83, 4.5, 3.17),
  Income      = c("Low (Below 15,000)", "Upper middle (30,000-50,000)", "Lower middle (15,000-30,000)", "High (Above 50,000)", "Lower middle (15,000-30,000)"),
  Hometown    = c("Village", "City", "Village", "City", "Village"),
  Computer    = c(3, 3, 3, 5, 3),
  Preparation = c("More than 3 Hours", "0-1 Hour", "0-1 Hour", "More than 3 Hours", "0-1 Hour"),
  Gaming      = c("0-1 Hour", "0-1 Hour", "More than 3 Hours", "More than 3 Hours", "2-3 Hours"),
  Attendance  = c("80%-100%", "80%-100%", "80%-100%", "80%-100%", "80%-100%"),
  Job         = c("No", "No", "No", "No", "No"),
  English     = c(3, 3, 4, 5, 3),
  Extra       = c("Yes", "Yes", "Yes", "Yes", "Yes"),
  Semester    = c("6th", "7th", "3rd", "4th", "4th"),
  Last        = c(3.22, 3.467, 4, 3.8, 3.94),
  Overall     = c(3.35, 3.467, 3.72, 3.75, 3.94)
)
dim(ba)
unique(ba$Department)
names(students)
names(ba)

# Task 6.3: combine two data frames with rbind()
all_students <- rbind(students, ba)
dim(all_students)
length(unique(all_students$Department))

# Task 6.4: create a column with ifelse()
all_students$high_result <- ifelse(all_students$Overall >= 3.5, "Yes", "No")
unique(all_students$high_result)
sum(all_students$high_result == "Yes")

# Task 6.5: create a numeric column
all_students$works <- ifelse(all_students$Job == "Yes", 1, 0)
sum(all_students$works)
