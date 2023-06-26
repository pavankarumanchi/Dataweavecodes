%dw 2.0
output application/json
---
payload map ((item, index) -> (item.Source): item.destination) reduce ((item, accumulator) ->item ++ accumulator)
//Dynamic Value of Key in Key-Value Pair


/*{
 " customerName": " customer ",
 " customerAddress": " address"
}*/