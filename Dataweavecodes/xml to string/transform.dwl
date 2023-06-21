%dw 2.0
output application/xml
---
Zoomit @("xmlns:xsi":"http://www.w3.org/2001/XMLSchema-instance") : payload.Zoomit

//I convert an xml file to string without losing the namespace