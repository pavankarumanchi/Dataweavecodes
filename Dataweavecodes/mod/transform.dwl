%dw 2.0
output application/json
---
1 to 5 map  
{
    number: $ ++ " " ++  (if(($$ mod 2 ) == 0) "is odd number" else "is even number") ++  (" and its square is " ++ ($*$))
}
//Here i use map 1 to 5 numbers and form a sentence based on if else condition and i write (if(($$ mod 2 ) == 0) mod means the remainder after dividing the dividend by the divisor.in map ($$) means index,index starts with zero.for example (0 mod 2) if it is equal to zero it will write "odd number" else it will write "even number".and here $ means value so i write ($*$) it is multiplay the value and write the sqaure. 