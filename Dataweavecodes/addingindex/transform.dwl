%dw 2.0
output json
---
payload map ((item, index) -> {
id: index+1,
name:item.name,
jobs: item.jobs map ((item, index) -> {num:index+1} ++ item)
})

//Here I add the index by using map function firstly add the [id: index+1] it will add the "id" field with index.Next i map the name [name:item.name] and jobs also [jobs: item.jobs] next i use map function and enter into the array here i add the new field with index {num:index0+1} then concatination(++) with item.