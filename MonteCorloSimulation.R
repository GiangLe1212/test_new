set.seed(42)
# Monte Corlo Simulation
num_simulations <- 1000000
#very many times, stable values, less noise
print(num_simulations)

# Define ranges pe ha per year Euro
# lower and upper
apple_income_range <- c(30000, 60000)
apple_costs_range <- c(15000, 30000)

print(apple_income_range)

apple_income <- runif(n=num_simulations,
                      min=apple_income_range[1],
                      max=apple_income_range[2])
print(apple_income)

apple_cost <- runif(n=num_simulations,
                    min=apple_costs_range[1],
                    max=apple_costs_range[2])
print(apple_cost)

apple_profits = apple_income - apple_cost
print(apple_profits)
#hist(apple_profits)

#abline(v=quantile(apple_profits), c=(0.1, 0.5, 0.9),lwd=10))


sheep_income_range <- c(2000, 5000)
sheep_cost_range <- c(1000, 2500)
sheep_incom <- runif(n = num_simulations,
                     min=sheep_income_range[1],
                     max =sheep_income_range[2])
sheep_cost <- runif(n=num_simulations,
                    min=sheep_cost_range,
                    max=sheep_cost_range)
sheep_results <- sheep_incom- sheep_cost
print(sheep_results)
print(sheep_results)
total_profits = sheep_results + apple_profits
print(total_profits)
hist(total_profits, col="white")
hist(apple_profits, add=T, col="black")
hist(sheep_results, add=T, col="blue")
