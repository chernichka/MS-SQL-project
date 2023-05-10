--See everyone's wearpons
Select g.GuardFirstName, g.GuardSecondName, Wearpon1.WearponType, Wearpon2.WearponType, Wearpon3.WearponId
FROM Guards g 
Left Join Wearpons Wearpon1
on g.GuardWearpon1 = Wearpon1.WearponId
Left Join Wearpons Wearpon2 
On g.GuardWearpon2 = Wearpon2.WearponId
Left JOIN Wearpons Wearpon3
On g.GuardWearpon3 = Wearpon3.WearponId


