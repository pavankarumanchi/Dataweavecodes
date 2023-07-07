%dw 2.0
output application/csv
---
valuesOf(
    payload
        groupBy ((item, index) -> (
            item.FirstName ++ item.LastName ++ item.Age))
        mapObject ((value, key, index) ->
            (index): {
                "Sr.No.": value."Sr.No." joinBy ":",
                "FirstName": value.FirstName[0],
                "LastName": value.LastName[0],
                "Age": value.Age[0],
                "Team Name": value."Team Name" joinBy ":",
                "Role": value.Role joinBy  " "
            })
)

//This example uses the mapObject function to iterate through the keys and values of the object that results from using groupBy on the payload. If some objects of the input payload have the same values in the FirstName, LastName and Age keys, the DataWeave script transforms those objects into a single row in a CSV file. The remaining values in the Team Name and Role keys for those objects are concatenated with : in the single CSV row.