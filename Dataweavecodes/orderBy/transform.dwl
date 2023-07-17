%dw 2.0
output application/json
---
(payload orderBy ((item, index) -> item.name))[0]




//filter the request and provide very old time stamp as object response.

/*{
  "id": "d53bad71-ede6",
  "name": "afterFilterPayload2023-07-13T10:41:05.1647928+05:30"
}*/