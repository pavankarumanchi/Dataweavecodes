%dw 2.0
output application/json
---
payload.Applications.*Application map {
    primaryID:$.@primaryID,
    childField1:$.childLayer.field1,
    childField2:$.childLayer.field2
}

// here i want map and I call a value that is a parent so use map function.

//output:
// [

// {

// primaryID: "123"

// childField1: "abc"

// childField2: "def"

// }

// {

// primaryID: "456"

// childField1: "abc"

// childField2: "def"

// }

// ]