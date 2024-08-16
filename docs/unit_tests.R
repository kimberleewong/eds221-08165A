install.packages("testthat")
install.packages("devtools")
install.packages("remotes")

library("testthat")
library("devtools")
instlibrary("usethis")
library("remotes")



mean_range <- function(df){
  
  col_means <- apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE)
  col_means_max <- max(col_means)
  col_means_min <- min(col_means)
  return(c(col_means_min, col_means_max))
}

mean_range(mtcars)


# expecting length true bc function produces mean min and mean max
expect_length(mean_range(mtcars), 2)
expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2]) # passes!
expect_true(mean_range(mtcars)[1] > mean_range(mtcars)[2]) #fails







