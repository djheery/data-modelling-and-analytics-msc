# Embedded Data Model Example

In this section you will learn how to create a company database using the embedded data model, and also query department documents.

## Embedded Data Model: Company Database: 

db.createCollection("Departments");

db.Departments.insert {
  { 
    _id: "D1", 
    dept_name: "Production", budget: 100000,
    staff: [ 
      {
        emp_id: "E1", 
        emp_name: "Smith",  
        salary: 9900, 
        marital_status: "W"
      },
      {
        emp_id: "E10", 
        emp_name: "Bashir",  
        salary: 59900, 
        marital_status: "M"
      } 
    ],
    projects: [ 
      {
        proj_id: "P1",  
        start_date: ISODate("2008-04-20"), 
        deadline: ISODate("2009-02-23")
        },
        {proj_id: "P2",  
        start_date: ISODate("2009-01-21"), 
        deadline: ISODate("2009-05-14")
        } 
    ]
});

db.Departments.insert({
   _id: "D2", 
   dept_name: "Sales", budget: 250000,
   staff: [ 
     { 
       emp_id: "E2", 
       emp_name: "Jones",  
       salary: 13200, 
       marital_status: "M"
      },
      {
      emp_id: "E3", 
      emp_name: "Roberts",  
      salary: 11000, 
      marital_status: "M"
      }
    ],
 projects:
  [ 
    {
      proj_id: "P3",
      start_date: ISODate("2008-02-02"), 
      deadline: ISODate("2009-03-03")
    } 
  ]
});

## Querying Department Documents with embedded model

Some sample queries include: 

Project Department with a projectID of p2

db.Departments.find({
  "projectID": "P2"
})

Project Dept Name and Staff Details where the Employee has Emp_Id ="E1"

db.departments.find(
  "staff": {
    $elemMatch: {
      emp_id: "E1"
    }
  }
  {
    dept_name: 1,
    "staff.emp_name": 1,
    "staff.emp_id": 1
  }
);

Project department id, name and budget

db.Departments.find(
  {},
  {
    dept_name: 1,
    budget: 1
  }
)



