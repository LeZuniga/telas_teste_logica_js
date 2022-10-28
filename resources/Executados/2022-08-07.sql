use proper_base

EXEC sp_rename 'spu.Overall_criticality', 'Overall_criticality_spu', 'COLUMN';  

ALTER TABLE spu add Overall_criticality_effective float(53) NULL;
