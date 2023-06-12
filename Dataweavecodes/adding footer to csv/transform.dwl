%dw 2.0
output text/plain
---
write(payload,"appication/csv") ++ ("TotalRecords,"++ sizeOf(payload) ++ ",”UADM USER PROFILE DATA STANDARD 2.2”")

//Here i add footer to flat csv file.so i use write function write(payload,"appication/csv") then i use (++) concatenation "TotalRecords,"++ sizeOf(payload) it will write total payload size and i concatenation with UADM USER PROFILE DATA STANDARD 2.2”.