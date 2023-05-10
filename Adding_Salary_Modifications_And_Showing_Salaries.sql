--Add premiums and fines
If not(Exists (Select column_name from information_schema.columns Where table_name = 'Guards' AND column_name = 'GuardSalaryMod'))
	Alter Table Guards ADD GuardSalaryMod int Not Null Constraint SalMod_default Default 0;




Update Guards Set GuardSalaryMod = -1 where GuardId = 2;





--See everyone's salaries
Select g.GuardFirstName, g.GuardSecondName, g.GuardRank, SUM(s.Salary + g.GuardSalaryMod) as Salary
FROM Guards g 
Full Join Salaries s
On s.Rank = g.GuardRank
GROUP By g.GuardFirstName, g.GuardSecondName, g.GuardRank, g.GuardId;