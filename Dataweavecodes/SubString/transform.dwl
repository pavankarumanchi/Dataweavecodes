%dw 2.0
import * from dw::core::Strings
output application/json
---
(payload map {
    Name:  upper(substringBefore($.Name, " /"))
}) filter !($.Name contains("IMPL"))

//I need to read data before "/" , make uppercase and only fields that doesn't contain "impl" so firstly i import the (import * from dw::core::Strings) because here we are using (substringBefore). here i use map function beacuse this is in array and i use upper this converts the lower case into upper case. here i use (substringBefore($.Name, " /")) it will print the before "/" values. then i use filter function it is used to filter the [filter !($.Name contains("IMPL"))] values.