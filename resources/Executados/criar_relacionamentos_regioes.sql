USE [Proper_Base]
GO

/**Region **/
IF (NOT EXISTS ( SELECT * FROM information_schema.table_constraints WHERE constraint_type = 'PRIMARY KEY' AND table_name = 'Region' )) BEGIN
	alter table Region add primary key (Id);
	alter table Region ADD CONSTRAINT PK_Region PRIMARY KEY NONCLUSTERED (Id asc);
END
	
/**Management_Group **/
IF (NOT EXISTS ( SELECT * FROM information_schema.table_constraints WHERE constraint_type = 'PRIMARY KEY' AND table_name = 'Management_Group' )) BEGIN
	alter table Management_Group add primary key (Id);
	alter table Management_Group ADD CONSTRAINT PK_Management_Group PRIMARY KEY NONCLUSTERED (Id asc);	
END
/** limpar orfaos **/
delete Management_Group where id in (select Management_Group.id from  Management_Group left join region on Management_Group.region_id=region.id where (region_id is null or region_id=0));
IF (NOT EXISTS ( SELECT * FROM information_schema.table_constraints WHERE constraint_type = 'FOREIGN KEY' AND table_name = 'Management_Group' AND CONSTRAINT_NAME='FK_Management_Group_Region') )
	BEGIN
	ALTER TABLE Management_Group WITH CHECK ADD CONSTRAINT FK_Management_Group_Region FOREIGN KEY(region_id) REFERENCES Region ([id])
	ALTER TABLE Management_Group CHECK CONSTRAINT FK_Management_Group_Region
END

/**Management_Unit **/
IF (NOT EXISTS ( SELECT * FROM information_schema.table_constraints WHERE constraint_type = 'PRIMARY KEY' AND table_name = 'Management_Unit' )) BEGIN
	alter table Management_Unit add primary key (Id);
	alter table Management_Unit ADD CONSTRAINT PK_Management_Unit PRIMARY KEY NONCLUSTERED (Id asc);	
END
/** limpar orfaos **/
delete Management_Unit where id in (select Management_Unit.id from  Management_Unit left join region on Management_Unit.region_id=region.id where (region_id is null or region_id=0));
IF (NOT EXISTS ( SELECT * FROM information_schema.table_constraints WHERE constraint_type = 'FOREIGN KEY' AND table_name = 'Management_Unit' AND CONSTRAINT_NAME='FK_Management_Unit_Region') )
	BEGIN
	ALTER TABLE Management_Unit WITH CHECK ADD CONSTRAINT FK_Management_Unit_Region FOREIGN KEY(region_id) REFERENCES Region ([id])
	ALTER TABLE Management_Unit CHECK CONSTRAINT FK_Management_Unit_Region
END	
	
/**Plant **/
IF (NOT EXISTS ( SELECT * FROM information_schema.table_constraints WHERE constraint_type = 'PRIMARY KEY' AND table_name = 'Plant' )) BEGIN
	alter table Plant add primary key (Id);
	alter table Plant ADD CONSTRAINT PK_Plant PRIMARY KEY NONCLUSTERED (Id asc);	
END
/** limpar orfaos **/
delete Plant where id in (select Plant.id from  Plant left join region on Plant.region_id=region.id where (region_id is null or region_id=0));
IF (NOT EXISTS ( SELECT * FROM information_schema.table_constraints WHERE constraint_type = 'FOREIGN KEY' AND table_name = 'Plant' AND CONSTRAINT_NAME='FK_Plant_Region') )
	BEGIN
	ALTER TABLE Plant WITH CHECK ADD CONSTRAINT FK_Plant_Region FOREIGN KEY(region_id) REFERENCES Region ([id])
	ALTER TABLE Plant CHECK CONSTRAINT FK_Plant_Region
END		
	

