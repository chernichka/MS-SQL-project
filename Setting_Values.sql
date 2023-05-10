If not(Exists (select * from Salaries))
	Insert Into Salaries
		VALUES
			('Private', 5),
        	('Sergeant', 7),
        	('Lieutenant', 15),
        	('Captain', 30);

If not(Exists (select * from Wearpons))
	Insert Into Wearpons
		VALUES
        	(1, 'Sword', 8, ''),
            (2, 'Sword', 8, ''),
            (3, 'Sword', 8, ''),
            (4, 'Longsword', 75, 'White Flame'),
            (5, 'Spear', 3, ''),
            (6, 'Spear', 3, ''),
            (7, 'Spear', 3, ''),
            (8, 'Crossbow', 20, ''),
            (9, 'Crossbow', 20, ''),
            (10, 'Dagger', 15, ''),
            (11, 'Shield', 5, ''),
            (12, 'Shield', 5, ''),
            (13, 'Shield', 5, ''),
            (14, 'Sword', 25, ''),
            (15, 'Sword', 25, ''),
            (16, 'Broadsword', 30, '');
            

If not(Exists (select * from Guards))
	Insert Into Guards (GuardId, GuardFirstName, GuardSecondName,GuardRank,GuardServiceStartDate)
		VALUES
        	(1, 'Frank', 'MacFryer', 'Private', '0311-01-01'),
            (2, 'Gilbert', 'Aldridge', 'Private', '0311-01-01'),
            (3, 'Oliver', 'Jenkins', 'Private', '0311-03-20'),
            (4, 'Thomas', 'Merser', 'Private', '0311-03-20'),
            (5, 'George', 'Evans', 'Private', '0310-07-11'),
            (6, 'Darren', 'Cloud', 'Sergeant', '0307-04-25'),
            (7, 'Scott', 'Douglas', 'Sergeant', '0306-11-02'),
            (8, 'Kurt', 'Kendal', 'Lieutenant', '0301-08-16'),
            (9, 'Walter', 'Fane', 'Captain', '0294-01-01');

IF (Exists (Select * From Guards))
	Update Guards set GuardWearpon1 = 5 where GuardId = 1
    Update Guards set GuardWearpon1 = 6 where GuardId = 2
    Update Guards set GuardWearpon1 = 7 where GuardId = 3
    Update Guards set GuardWearpon1 = 1 where GuardId = 4
    Update Guards set GuardWearpon1 = 2 where GuardId = 5
    Update Guards set GuardWearpon1 = 14 where GuardId = 6
    Update Guards set GuardWearpon1 = 15 where GuardId = 7
    Update Guards set GuardWearpon1 = 16 where GuardId = 8
    Update Guards set GuardWearpon1 = 4 where GuardId = 9
    Update Guards set GuardWearpon2 = 10 where GuardId = 9
    Update Guards set GuardWearpon2 = 8 where GuardId = 6
    Update Guards set GuardWearpon2 = 9 where GuardId = 7
    Update Guards set GuardWearpon2 = 11 where GuardId = 4
    Update Guards set GuardWearpon2 = 12 where GuardId = 5;
	



Select * from Salaries;
Select * from Wearpons;
SELECT * From Guards;