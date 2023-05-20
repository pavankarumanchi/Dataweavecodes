%dw 2.0
output application/csv
---
(payload flatMap ((item, index) -> 
    (item.Skills default []) ++ (item.Courses default []) map (
{
    "S.No": index,
    "Name": item.Name,
    "Role": item.Role,
    "Company": item.Company,
    "Location": item.Location,
    "Skill": $.Skill,
    "SkillExp": $.SkillExp,
    "Course": $.Course,
    "CourseExp": $.CourseExp
    }
 
    )
   
))  map ((item, index) -> 
    item  update {
        case ."S.No" -> index+1
    }
)

//Here transform the nested Array of objects into the csv format (output application/csv).here i use  flatmap.in flatmap i use (default []).default to a new value when left part is null.then i use map and map the required values.in map i add index+1 it means it will write index for every field.