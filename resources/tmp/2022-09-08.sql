use proper_base

delete [interface_structure] where interface_table_id=6 and (position=1 or position=2 or
  position=3 or position=4 or position=5);

update [interface_structure] set position=(position-5) where interface_table_id=6 and position>0;

delete [interface_structure] where interface_table_id=7 and (position=1 or position=2 or
  position=3 or position=4 or position=5);

update [interface_structure] set position=(position-5) where interface_table_id=7 and position>0;