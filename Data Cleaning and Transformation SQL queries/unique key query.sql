use project

select * from final_table_imp order by [Provider Id]
select * from final_table_out order by [Provider Id]
select * from final_table_nurse order by [Provider Id]
select * from final_table_hha order by [Provider Id]
select * from final_table_hos order by [Provider Id]

UPDATE final_table_imp SET [Provider Name]= LOWER([Provider Name]), [Provider Street Address] = LOWER([Provider Street Address]), [Provider City]= LOWER([Provider City]), [Provider State] = UPPER([Provider State]);
UPDATE final_table_out SET [Provider Name]= LOWER([Provider Name]), [Provider Street Address] = LOWER([Provider Street Address]), [Provider City]= LOWER([Provider City]), [Provider State] = UPPER([Provider State]);
UPDATE final_table_nurse SET [Facility Name]= LOWER([Facility Name]), [Street Address] = LOWER([Street Address]), [City]= LOWER([City]), [State] = UPPER([State]);
UPDATE final_table_hha SET [Agency Name]= LOWER([Agency Name]), [Street Address] = LOWER([Street Address]), [City]= LOWER([City]), [State] = UPPER([State]);
UPDATE final_table_hos SET [Name]= LOWER([Name]), [Street Address] = LOWER([Street Address]), [City]= LOWER([City]), [State] = UPPER([State]);


ALTER TABLE final_table_imp
ADD [unique id] varchar(255);

ALTER TABLE final_table_out
ADD [unique id] varchar(255);

ALTER TABLE final_table_nurse
ADD [unique id] varchar(255);

ALTER TABLE final_table_hha
ADD [unique id] varchar(255);

ALTER TABLE final_table_hos
ADD [unique id] varchar(255);

Update final_table_imp Set [unique id] = CONCAT([Provider ID], [YEAR])
Update final_table_out Set [unique id] = CONCAT([Provider ID], [YEAR])
Update final_table_nurse Set [unique id] = CONCAT([Provider ID], [YEAR])
Update final_table_hha Set [unique id] = CONCAT([Provider ID], [YEAR])
Update final_table_hos Set [unique id] = CONCAT([Provider ID], [YEAR])

delete from final_table_hos where [ZIP Code] is Null
update final_table_imp set [DRG Definition] = TRIM('"' FROM [DRG Definition] )