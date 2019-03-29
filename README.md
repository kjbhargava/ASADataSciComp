# Styleization guide


# Overall paramaters we will be using.  

par(mar=c(5, 6, 5, 1), mgp=c(2.4, 0.8, 0), las=1)

# If we need to change this for one graph, we should change for all.  
# Let me know if these don't work for a graph you do
# This creates some extra room on the left for labeling, as well as
# gives some nice space between the main top title and the graph.
# It also diminishes the space between axis ticks and their labels.

### VISUALIZATION OF DATA

## Use the following border and opacity values

# col = "grey99", alpha = .5

## COLOR_OPTIONS
## Please limit to the following colorblind-friendly options
# #006ba4 #c85200 #595959 
# #5f9ed1 #ff800e #898989
# #a2c8ec #ffbc79 #ababab

### Points can vary by size and shape (21<=pch<=25, col="grey99", bg=COLOR_OPTIONS)


theme_nych <- function(base_size = 11, base_family = "") {
  theme_light() 
  theme(
    axis.line = element_line(color = "grey39"),
    axis.ticks.length = 0.8,
    axis.text = element_text(size = rel(0.9), col = "grey27"), 
    axis.text.x = element_text(angle = 60, hjust = 1)
    )
}

# To set the theme for all graphs

theme_set(theme_nych)


### SIDENOTE:
###### Scientific format is the worst.  Let's not use it.
# I don't think we've included any of the continuous data columns yet tho
