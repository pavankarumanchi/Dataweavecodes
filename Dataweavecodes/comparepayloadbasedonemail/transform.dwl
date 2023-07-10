%dw 2.0
import * from dw::core::Arrays
output application/json
var arr1= [
    {
        "id": 1125522,
        "globalID": "10134115",
        "email": "aa@aa.com"
    },
    {
        "id": 1228158,
        "globalID": "9938796",
        "email": "bb@bb.com"
    },
    {
        "id": 1289789,
        "globalID": "9815141",
        "email": "cc@cc.com"
    }
]
var arr2=[
    {
        "email": "aa@aa.com",
        "RegistrationDate": "2023-05-09T19:06:39Z"
    },
    {
        "email": "bb@bb.com",
        "RegistrationDate": "2023-05-09T18:28:30Z"
    },
    {
        "email": "dd@dd.com",
        "RegistrationDate": "2023-05-09T14:33:40Z"
    }
]
---
(arr1 ++ arr2 groupBy ((item, index) -> item.email )) mapObject ((value, key, index) -> (key): {(value)} distinctBy ((item, index) -> item))

//Compare two payloads and transformed based on email