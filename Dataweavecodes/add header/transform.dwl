%dw 2.0
ns xsi http://www.w3.org/2001/XMLSchema-instance
output application/xml  
---
{
  Test @('xmlns:xsi': xsi): {
    Header: {
      Version: "2.1.0"
    },
    tag: payload.tag
  }
}

//Here I can add header and xmlns:xsi attribute to an xml file. so i use name sapce and i create header.



 /*<Test xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<Header>
  <Version>2.1.0</Version> 
 </Header>
<tag>
    <name> Ana </name>
    <surname> Adam </surname>
    <address> test </address>
 
    <name> Carl </name>
    <surname> Adam </surname>
    <address> test2 </address>
</tag>
</Test>*/