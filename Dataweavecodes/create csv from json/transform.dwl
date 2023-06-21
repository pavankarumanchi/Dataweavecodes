%dw 2.0
output application/csv header=true
---
payload flatMap ((item, index) -> [
    {
        emp_name: item.internal_emp_name,
        emp_id: item.internal_emp_id,
        emp_dept: item.internal_emp_dept
    },
    {
        emp_name: item.external_emp_name,
        emp_id: item.external_emp_id,
        emp_dept: item.external_emp_dept
    }
])

//Dataweave to create csv, each object to 2 rows in CSV.So here i use application/csv header=true and then i use flatmap in flatmap mapping the fields.


/*emp_name,emp_id,emp_dept
YATAN,101,IT
YATAN123,A-101,A-IT
YAGYA,102,HR
YAGYA123,A-102,A-HR*/