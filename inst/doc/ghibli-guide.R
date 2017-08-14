## ---- echo = FALSE, message = FALSE--------------------------------------
require(ghibli)

knitr::opts_chunk$set(
  comment = "#",
    error = FALSE,
     tidy = FALSE,
    cache = FALSE,
 collapse = TRUE,
 fig.width = 5)

## ----palettes------------------------------------------------------------

# see palette names and colours
par(mfrow=c(7,3))
for(i in names(ghibli_palettes)) print(ghibli_palette(i))


## ---- ggplot 1-----------------------------------------------------------

library(ggplot2)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_manual(values = rev(ghibli_palette("MarnieMedium1"))) +
  theme_grey()

## ---- ggplot 2-----------------------------------------------------------

ggplot(airquality, aes(x=Day, y=Month)) +
  geom_tile(aes(fill=Temp)) +
  scale_fill_gradientn(colours = ghibli_palette("MononokeMedium", 21, type = "continuous")) +
  scale_x_discrete(expand = c(0, 0)) +
  scale_y_discrete(expand = c(0, 0)) +
  coord_equal() +
  theme(legend.position = "top")

