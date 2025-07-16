my_func = function(data, sample_size, reps, ...){
  means = c()
  for (i in 1:reps){
    sample_data = sample(data, sample_size, replace = TRUE)
    means = c(means, mean(sample_data))
  }
  hist(means, ...)
  return(sd(means))
}

library(MASS)
data(beav1)
my_func(beav1$temp, sample_size = 50, reps = 500, col = "skyblue", main = "Mean Sampling Distribution")
