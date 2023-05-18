%dw 2.0
output application/json
---
payload distinctBy $ groupBy ((item, index) ->item.points[0][0])
mapObject ((value, key, index) ->
(key) : (value[0] - "points") ++  {points: [flatten(value.points) reduce ($$ ++ $) distinctBy $]} )

//In my input i have different types of points and some points are duplicate also. So i want to remove the duplicate values.So use the distinictBy function for the purpose of remove the duplicate values.also different values are add under points.here i use grouypBy is used to group the different points under same points.here i use the mapobject (key) : (value[0] - "points") in mapobject i use (-) remove specified values from an input value. and also i use flatten to cahnge the sub arrays in single array.So use the distinictBy function for the purpose of remove the duplicate values.