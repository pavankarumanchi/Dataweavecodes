%dw 2.0
output application/csv
---
flatten(payload.Tasks map ((item, index) -> 
(1 to (2+item.MoveTagCopies)) map(
    if($ == 1)(
        {
    "UID": item.UID,
    "Sequence": $,
    "DateOfWork": item.DateOfWork,
    "Employee": item.Employee,
    "WorkerType": item.WorkerType,
    "WorkType": item.WorkType,
    "MoveTagCopies": item.MoveTagCopies,
    "External_val": "xyz"
        }
    )
    else if($ == 2)
    (
    {
      "UID": item.UID,
      "Sequence": $,
      "DateOfWork": item.DateOfWork,
      "Employee": "",
      "WorkerType": item.WorkerType,
      "WorkType": item.WorkType,
      "MoveTagCopies": item.MoveTagCopies,
      "External_val":"abc"
    }
    )
        else(
        {
     "UID": item.UID,
      "Sequence": $,
      "DateOfWork": item.DateOfWork,
      "Employee": item.Employee,
      "WorkerType": "",
      "WorkType": "",
      "MoveTagCopies": item.MoveTagCopies,
      "External_val":"abc"
 
        }
    )
)
 
))
/*I have a requirement to create CSV from JSON payload, wherein the JSON 
Record 1 shall have elements:
UID,Sequence, DateOfWork, Employee, WorkerType, WorkType, MoveTagCopies,External_val1
Where 'External_val1' = xyz

Record 2 shall have elements:
UID,Sequence, DateOfWork, undef, WorkerType, WorkType, MoveTagCopies,External_val2
Where 'External_val2' = abc

Record 3 shall have elements:                  
UID,Sequence, DateOfWork, Employee, undef, undef, MoveTagCopies

Now the output of the CSV will be depending on the element: "MoveTagCopies".

Wherein, if "MoveTagCopies" is more than 0 then Record 3 will be added the number of times "MoveTagCopies" value mentioned.


Output for each element will be having:

At least two records if no printing of move tags is requested.
At least 3 records if move tags are to be printed, each MoveTag requires a separate record.*/