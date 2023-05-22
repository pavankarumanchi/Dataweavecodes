%dw 2.0
output application/json
var x =payload.Group groupBy ($.POF ++ $.DATE ++ $.COD_PERFORMANCE ++ $.ID_PRACTICE_REQUEST)
---
valuesOf(x) map {
    "Group":$
}


//Here i want to compare 2 arrays with same fields and create a new one from merge so i use the groupBy based on these fields ($.POF ++ $.DATE ++ $.COD_PERFORMANCE ++ $.ID_PRACTICE_REQUEST) i create an variable.these fieleds are same in two arrays.then i call variable valuesOf(x) it means calling the values of variable.the i sue map function create key "Group".