# this script grabs lake polygons from ArcGIS World Lakes GDB using the ArcGIS API

library(sf)
library(leaflet)
library(geojsonsf)
# library(dplyr)
# library(urltools)

# there's no great way to query the API in R, so to get the urls, you navigate to:
# https://services.arcgis.com/jIL9msH9OI208GCb/ArcGIS/rest/services/World_Lakes/FeatureServer/0
# scroll down to 'query'
# in the WHERE query, I used the Hylak_id from the layer website
# for Format, choose GEOJSON
# and then select the 'Query (GET)' and copy the resultant url

# BALATON ----
balaton_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/ArcGIS/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%271251%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
balaton <- geojson_sf(balaton_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=balaton, weight=2, color="blue")
write_sf(balaton, file.path('lake_polygons/balaton.shp'))

# FEEAGH ----
feeagh_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/ArcGIS/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%27163604%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
feeagh <- geojson_sf(feeagh_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=feeagh, weight=2, color="blue")
write_sf(feeagh, file.path('lake_polygons/feeagh.shp'))

# KENTUCKY ----

kentucky_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%27801%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
kentucky <- geojson_sf(kentucky_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=kentucky, weight=2, color="blue")
write_sf(kentucky, file.path('lake_polygons/kentucky.shp'))

# MUGGLESEE ----
mugglesee_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%27165102%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
mugglesee <- geojson_sf(mugglesee_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=mugglesee, weight=2, color="blue")
write_sf(mugglesee, file.path('lake_polygons/mugglesee.shp'))

# MENDOTA ----
mendota_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%279086%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
mendota <- geojson_sf(mendota_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=mendota, weight=2, color="blue")
write_sf(mendota, file.path('lake_polygons/mendota.shp'))

# PONTCHARTRAIN ----

pontchartrain_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%2768%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
pontchartrain <- geojson_sf(pontchartrain_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=pontchartrain, weight=2, color="blue")
write_sf(pontchartrain, file.path('lake_polygons/pontchartrain.shp'))

# ROTOITI ----

rotoiti_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%2716646%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
rotoiti <- geojson_sf(rotoiti_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=rotoiti, weight=2, color="blue")
write_sf(rotoiti, file.path('lake_polygons/rotoiti.shp'))

# ROTUORUA ----
rotuorua_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%2716649%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
rotuorua <- geojson_sf(rotuorua_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=rotuorua, weight=2, color="blue")
write_sf(rotuorua, file.path('lake_polygons/rotuorua.shp'))

# SUNAPEE ----
sunapee_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%279068%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
sunapee <- geojson_sf(sunapee_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=sunapee, weight=2, color="blue")
write_sf(sunapee, file.path('lake_polygons/sunapee.shp'))

# TAIHU ----
taihu_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%27148%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
#warning okay
taihu <- geojson_sf(taihu_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=taihu, weight=2, color="blue")
write_sf(taihu, file.path('lake_polygons/taihu.shp'))

# TROUT ----
trout_url = 'https://services.arcgis.com/jIL9msH9OI208GCb/arcgis/rest/services/World_Lakes/FeatureServer/0/query?where=Hylak_id+%3D+%278736%27&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=&returnGeometry=true&returnCentroid=false&featureEncoding=esriDefault&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&applyVCSProjection=false&returnIdsOnly=false&returnUniqueIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnQueryGeometry=false&returnDistinctValues=false&cacheHint=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=none&f=pgeojson&token='
#warning okay
trout <- geojson_sf(trout_url)
#plot to make sure it's right
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addPolygons(data=trout, weight=2, color="blue")
write_sf(trout, file.path('lake_polygons/trout.shp'))

