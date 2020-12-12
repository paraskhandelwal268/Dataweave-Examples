%dw 2.0
output application/json
var strCharSet = '0123456789'
var strCharSetLength = sizeOf(strCharSet) - 1
var intLength = 7
---
"C" ++ (1 to intLength map strCharSet[randomInt(strCharSetLength)] joinBy'')