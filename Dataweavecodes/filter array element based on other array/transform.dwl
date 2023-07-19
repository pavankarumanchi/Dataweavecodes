%dw 2.0
output application/json

var one = [{
employee : 1,
school :"C"
},
{
employee : 3,
school :"A"
}]

---
one ++ (payload) map $ distinctBy ((item, index) ->item.employee)

//have two arrays. Have to filter array 1 element based on array 2

/*
[
{
employee : 1
school :C
},
{
employee : 3
school :A
},
{
employee : 2
school :b
}
]
*/