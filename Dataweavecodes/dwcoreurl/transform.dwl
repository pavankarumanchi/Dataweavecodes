%dw 2.0
import * from dw::core::URL
output application/json
---
 {    "decodeURI":decodeURI("%22https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=pavankarumanchi/Dataweavecodes&path=Dataweavecodes/changekeyvalues%22")
 }
//  encodeURI(write(payload, "application/json"))


//Here i am using dw::core::URL functions. so I import the URL.(import * from dw::core::URL)in the core function i used two functions (decodeURI) and (encodeURI).encodeURI is used To encode the URI.also used decodeURI it is used to decode the encoded URI.