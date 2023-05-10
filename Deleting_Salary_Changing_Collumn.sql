--If not(Exists (Select column_name from information_schema.columns Where table_name = 'Guards' AND column_name = 'GuardSalaryMod'))

Alter Table Guards DROP Constraint SalMod_default;
Alter Table Guards DROP COLUMN GuardSalaryMod;

--Select * from Guards