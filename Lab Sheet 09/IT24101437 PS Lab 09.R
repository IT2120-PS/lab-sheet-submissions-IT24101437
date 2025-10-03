setwd("C:\\Users\\Shasoo\\Downloads\\IT24101437 PS Lab 09\\IT24101437 PS Lab 09")

# i. Generate random sample of size 25
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

# ii. Test mean < 46 at 5% significance
t_test_result <- t.test(baking_time, mu = 46, alternative = "less")
t_test_result

# Extract values
t_statistic <- t_test_result$statistic
p_value <- t_test_result$p.value
conf_interval <- t_test_result$conf.int

t_statistic
p_value
conf_interval

