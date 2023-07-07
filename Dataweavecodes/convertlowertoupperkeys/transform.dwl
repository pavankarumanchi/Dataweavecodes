%dw 2.0
output application/json
---
items: payload.books map (item, index) -> {
      book: item mapObject (value, key) -> {
      (upper(key)): value
      }
}

//This DataWeave example uses the map function to iterate through an array of books and perform a series of tasks on each.and here i want to convert lower case keys to upper case keys.