%dw 2.0
output application/java
---
payload.tsResponse.groups.*group map ((item, index) -> {
    externalId: item.@name,
    name: item.@name,
    displayName: item.@name
})

// Here transformming data xml to java