
library(sp)
library(leaflet)
library(devtools)
library(htmlwidgets)
library(webshot)

mymap <- leaflet() %>%
  addTiles() %>%
  setView(lng=0, lat=0, zoom = 1 ) %>%
  addCircleMarkers(lng=-118.816545, lat=37.694518, popup="Little Hot Creek", color = "yellow", radius = 5) %>%
  addLabelOnlyMarkers(lng=-118.816545, lat=37.694518, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=6.139967, lat=53.492183, popup="Schiermonnikoog", color = "limegreen", radius = 5) %>%
  addLabelOnlyMarkers(lng=6.139967, lat=53.492183, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'left', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-102.024639, lat=26.82825, popup="     Archaean Domes", color = "darkorchid", radius = 5) %>%
  addLabelOnlyMarkers(lng=-102.024639, lat=26.82825, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'bottom', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-102.141608, lat=26.848093, popup="Churince", color = "red", radius = 5) %>%
  addLabelOnlyMarkers(lng=-102.141608, lat=26.848093, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=114.2789009, lat=-26.421285, popup="Shark Bay", color = "darkgray", radius = 5) %>%
  addLabelOnlyMarkers(lng=114.2789009, lat=-26.421285, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'top', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=15.841175, lat=50.784766, popup="Kowary", color = "pink", radius = 5) %>%
  addLabelOnlyMarkers(lng=15.841175, lat=50.784766, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=19.158789, lat=42.884356, popup="Zloty Stok", color = "orange", radius = 5) %>%
  addLabelOnlyMarkers(lng=19.158789, lat=42.884356, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-74.41666667, lat=83.06666667, popup="Ice Shelf", color = "cyan", radius = 5) %>%
  addLabelOnlyMarkers(lng=-74.41666667, lat=83.06666667, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'left', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  addCircleMarkers(lng=-118.816545, lat=37.694518, popup="Little Hot Creek", color = "yellow", radius = 5) %>%
  addLabelOnlyMarkers(lng=-118.816545, lat=37.694518, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=6.139967, lat=53.492183, popup="Schiermonnikoog", color = "limegreen", radius = 5) %>%
  addLabelOnlyMarkers(lng=6.139967, lat=53.492183, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'left', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-102.024639, lat=26.82825, popup="     Archaean Domes", color = "darkorchid", radius = 5) %>%
  addLabelOnlyMarkers(lng=-102.024639, lat=26.82825, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'bottom', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-102.141608, lat=26.848093, popup="Churince", color = "red", radius = 5) %>%
  addLabelOnlyMarkers(lng=-102.141608, lat=26.848093, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=114.2789009, lat=-26.421285, popup="Shark Bay", color = "darkgray", radius = 5) %>%
  addLabelOnlyMarkers(lng=114.2789009, lat=-26.421285, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'top', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=15.841175, lat=50.784766, popup="Kowary", color = "pink", radius = 5) %>%
  addLabelOnlyMarkers(lng=15.841175, lat=50.784766, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=19.158789, lat=42.884356, popup="Zloty Stok", color = "orange", radius = 5) %>%
  addLabelOnlyMarkers(lng=19.158789, lat=42.884356, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-74.41666667, lat=83.06666667, popup="Ice Shelf", color = "cyan", radius = 5) %>%
  addLabelOnlyMarkers(lng=-74.41666667, lat=83.06666667, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'left', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-118.816545, lat=37.694518, popup="Little Hot Creek", color = "yellow", radius = 5) %>%
  addLabelOnlyMarkers(lng=-118.816545, lat=37.694518, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=6.139967, lat=53.492183, popup="Schiermonnikoog", color = "limegreen", radius = 5) %>%
  addLabelOnlyMarkers(lng=6.139967, lat=53.492183, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'left', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-102.024639, lat=26.82825, popup="     Archaean Domes", color = "darkorchid", radius = 5) %>%
  addLabelOnlyMarkers(lng=-102.024639, lat=26.82825, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'bottom', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-102.141608, lat=26.848093, popup="Churince", color = "red", radius = 5) %>%
  addLabelOnlyMarkers(lng=-102.141608, lat=26.848093, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=114.2789009, lat=-26.421285, popup="Shark Bay", color = "darkgray", radius = 5) %>%
  addLabelOnlyMarkers(lng=114.2789009, lat=-26.421285, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'top', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=15.841175, lat=50.784766, popup="Kowary", color = "pink", radius = 5) %>%
  addLabelOnlyMarkers(lng=15.841175, lat=50.784766, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=19.158789, lat=42.884356, popup="Zloty Stok", color = "orange", radius = 5) %>%
  addLabelOnlyMarkers(lng=19.158789, lat=42.884356, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'right', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  addCircleMarkers(lng=-74.41666667, lat=83.06666667, popup="Ice Shelf", color = "cyan", radius = 5) %>%
  addLabelOnlyMarkers(lng=-74.41666667, lat=83.06666667, label =  "", 
                      labelOptions = labelOptions(noHide = T, direction = 'left', textOnly = T, textsize = "15px", style = list(
                        "color" = "white",
                        "font-style" = "bold"
                      ))) %>%
  
  #   addProviderTiles("Esri.WorldTopoMap")   
  #para cambiar estilos de mapa https://leaflet-extras.github.io/leaflet-providers/preview/
  
  addProviderTiles("Esri.WorldImagery")
mymap


## save html to png
saveWidget(mymap, "map_mats.html", selfcontained = FALSE)
webshot("map_mats.html", file = "map_mats.png",
        cliprect = "viewport", zoom=8)

