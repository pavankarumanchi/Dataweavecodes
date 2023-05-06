%dw 2.0
output application/json
---
payload filter ((item, index) -> !isEmpty(item.Name)) map(()->
{
    Name: $.Name,
    "Id's": ($ filterObject ((value, key, index) -> (key as String) contains  "id" )) pluck ((value, key, index) -> id:value )
}
) 




/*payload filter ((item, index) -> !isEmpty(item.Name)) map(()->
{
    Name: $.Name,
    "Id's": ($ filterObject ((value, key, index) -> (key as String) contains  "id" )) pluck ((value, key, index) -> id:value )
}
)*/
//here transforming data based on empty values by using filter function i filtrer the empty data and write the other data then iuse the map function To map the Name, and create Id's field.heer i use the filterobject to enter into the object and use the contains (key as String) contains  "id" ) here using pluck function and ids into single objects. 