#* plotRandomHistogram.R
#*
#* Author: Thomas Fisher
#* 
#* Purpose: A function that will
#*      generate a random sample of
#*      Normal "observations" and plot
#*      a histogram of the data.
#*
#* Inputs:
#*     num_pts = the number of observations
#*               to generate (random)
#*     mu = the theoretical mean of the Normal
#*     sigma = the theoretical standard deviation
#*             of the Normal
#*     seed = a random number generation seed, to
#*            ensure reproducibility
#*
#* Outputs:
#*     A plot of the histogram is provided!
#*     A list with the follow elements
#*       Random_values = a vector with the generated
#*                       random values
#*       Mean_Random_values = corresponding sample mean
#*       SD_Random_values = corresponding standard deviation
#*       

plotRandomHistogram <- function(num_pts=30, mu=0, sigma=1,
                       seed=NULL, meanColor = "royalblue") {
  set.seed(seed)
  x <- rnorm(n=num_pts, mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, col=meanColor, lwd=5)
  
  # The last line of code in the function
  #  is output! from the function
  list(Random_values = x, 
       Mean_Random_values = mean_x,
       SD_Random_values = sd(x))
}

plotRandomHistogram()
plotRandomHistogram(seed=1)
plotRandomHistogram(seed=1, num_pts=1000000)
plotRandomHistogram(seed=1, num_pts=1000000, meanColor="forestgreen")
plotRandomHistogram(seed=1, num_pts=1000000, meanColor="hotpink")
