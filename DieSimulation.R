die_prob = c(0.125, 0.125, 0.125, 0.125, 0.125, 0.375)

roll <- function() {
  die<-1:6
  dice<-sample(x = die, size = 2, replace = TRUE, prob = die_prob)
  sum(dice)
}

roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

library(ggplot2)

rolls <- replicate(10000, roll())
qplot(rolls, binwidth=1)