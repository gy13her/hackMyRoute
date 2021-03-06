library(shiny)
library(leaflet)
fluidPage(
  titlePanel("FixMyPath"),
  sidebarLayout(
    sidebarPanel("User input", width = 3
            # ,checkboxGroupInput("display", label = "Display", choices = c("zones", "centroids", "some-lines", "all-lines"), selected = "zones"),
      ,sliderInput("transp_zones", label = "Transparency of zone boundaries", min = 0, max = 1, value = 0.1)
      # ,sliderInput("transp_cents", label = "Transparency of centroids", min = 0, max = 1, value = 0.3)
      ,sliderInput("transp_fast", label = "Transparency of paths", min = 0, max = 1, value = 0.7)
      ,selectInput("viewout", "Output to view", choices = c("Highest cycle counts", "Lowest number who cycle", "Highest potential", "Greatest extra cycling potential"))
      # , selectInput("colour", "Colour of paths", choices = c("red", "blue", "black"))

    ),
    mainPanel(leafletOutput('myMap'))
  ))