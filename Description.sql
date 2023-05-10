DROP Table Guards
DROP Table Salaries
DROP Table Wearpons;

CREATE Table Salaries
(
  Rank varchar(50) NOT Null Primary Key,
  Salary int
  )

Create Table Wearpons
(
  WearponId int Not Null Primary Key,
  WearponType varchar(50),
  WearponValue int,
  WearponName varchar(50)
  )
  
  Create Table Guards
(
  GuardId int  Not Null Primary key,
  GuardFirstName varchar(50),
  GuardSecondName varchar(50),
  GuardRank varchar(50) FOREIGN Key References Salaries(Rank),	
  GuardWearpon1 int Foreign Key References Wearpons(WearponId),
  GuardWearpon2 int Foreign Key References Wearpons(WearponId),
  GuardWearpon3 int Foreign Key References Wearpons(WearponId),
  GuardServiceStartDate date
  )

