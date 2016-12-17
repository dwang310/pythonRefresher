# Import data
# Wrangling
	# Tidy data
	# Transform data
# Understand
	# Visualization
	# Modelling
# Communication

library(tidyverse)

# CH. 3 Data Visualization

## Do cars with big engines use more fuel than cars with small engines?
ggplot(data = mpg) +
	geom_point(mapping = aes(x = displ, y = hwy))

## Scatter plot of hwy vs. cyl
ggplot(data = mpg) +
	geom_point(mapping = aes(x = hwy, y = cyl))

## Detecting hyrbids within dsply vs. hwy using aesthetic mappings (color)
ggplot(data = mpg) +
	geom_point(mapping = aes(x = displ, y = hwy, color = class))

## Detecting hyrbids within dsply vs. hwy using aesthetic mappings (size)
ggplot(data = mpg) +
	geom_point(mapping = aes(x = displ, y = hwy, size = class))

## Manually making colour of points blue
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

## Booleon color plotting
ggplot(data = mpg) +
	geom_point(mapping = aes(x = displ, y = hwy, color = displ > 5))  # It will color points based on if displ > 5 or not

## Using facets (or subplots) in ggplot
ggplot(data = mpg) +
	geom_point(mapping = aes(x = displ, y = hwy)) +
	facet_wrap(~ class, nrow = 2)

## Make a facet using a combination of two variables
ggplot(data = mpg) +
	geom_point(mapping = aes(x = displ, y = hwy)) +
	facet_grid(drv ~ cyl)

## Using a smooth geom
ggplot(data = mpg) +
	geom_smooth(mapping = aes(x = displ, y = hwy))

## Adding a linetype argument
ggplot(data = mpg) + 
	geom_point(mapping = aes(x = displ, y = hwy, color = drv)) +
  	geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv))

## More efficient way to do previous example
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
	geom_point(mapping = aes(color = class)) +
	geom_smooth()