use proper_Base
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu' AND COLUMN_NAME='lead_time_modal_value' ) 
   	alter table spu drop column lead_time_modal_value;		


/* CalcularCustoUnitarioSpus
supply_Alternative Share */
update supply_Alternative set share=share/100.0 where share>1.0;

/*CalcularRelevanciaDaDemanda
Parameters_analysis Relevance_Analysis_A_Limit
Parameters_analysis Relevance_Analysis_B_Limit
 */
update Parameters_analysis set Relevance_Analysis_A_Limit=Relevance_Analysis_A_Limit/100.0 where Relevance_Analysis_A_Limit>1.0;
update Parameters_analysis set Relevance_Analysis_B_Limit=Relevance_Analysis_B_Limit/100.0 where Relevance_Analysis_B_Limit>1.0;

/* CalculoDaCriticidade
Parameters_analysis Criticality_Criterion_01_Weight
Parameters_analysis Criticality_Criterion_02_Weight
Parameters_analysis Criticality_Criterion_03_Weight
Parameters_analysis Criticality_Criterion_04_Weight
Parameters_analysis Criticality_Criterion_05_Weight

management_Unit_Parameter Criticality_Criterion_01_Weight 
management_Unit_Parameter Criticality_Criterion_02_Weight 
management_Unit_Parameter Criticality_Criterion_03_Weight 
management_Unit_Parameter Criticality_Criterion_04_Weight 
management_Unit_Parameter Criticality_Criterion_05_Weight 

item_Parameters Criticality_Criterion_01_grade
item_Parameters Criticality_Criterion_02_grade
item_Parameters Criticality_Criterion_03_grade
item_Parameters Criticality_Criterion_04_grade
item_Parameters Criticality_Criterion_05_grade

spu_Parameter Criticality_Criterion_01_grade
spu_Parameter Criticality_Criterion_02_grade
spu_Parameter Criticality_Criterion_03_grade
spu_Parameter Criticality_Criterion_04_grade
spu_Parameter Criticality_Criterion_05_grade
*/
update Parameters_analysis set Criticality_Criterion_01_Weight=Criticality_Criterion_01_Weight/100.0 where Criticality_Criterion_01_Weight>1.0;
update Parameters_analysis set Criticality_Criterion_02_Weight=Criticality_Criterion_02_Weight/100.0 where Criticality_Criterion_02_Weight>1.0;
update Parameters_analysis set Criticality_Criterion_03_Weight=Criticality_Criterion_03_Weight/100.0 where Criticality_Criterion_03_Weight>1.0;
update Parameters_analysis set Criticality_Criterion_04_Weight=Criticality_Criterion_04_Weight/100.0 where Criticality_Criterion_04_Weight>1.0;
update Parameters_analysis set Criticality_Criterion_05_Weight=Criticality_Criterion_05_Weight/100.0 where Criticality_Criterion_05_Weight>1.0;

update management_Unit_Parameter set Criticality_Criterion_01_Weight=Criticality_Criterion_01_Weight/100.0 where Criticality_Criterion_01_Weight>1.0;
update management_Unit_Parameter set Criticality_Criterion_02_Weight=Criticality_Criterion_02_Weight/100.0 where Criticality_Criterion_02_Weight>1.0;
update management_Unit_Parameter set Criticality_Criterion_03_Weight=Criticality_Criterion_03_Weight/100.0 where Criticality_Criterion_03_Weight>1.0;
update management_Unit_Parameter set Criticality_Criterion_04_Weight=Criticality_Criterion_04_Weight/100.0 where Criticality_Criterion_04_Weight>1.0;
update management_Unit_Parameter set Criticality_Criterion_05_Weight=Criticality_Criterion_05_Weight/100.0 where Criticality_Criterion_05_Weight>1.0;

update item_Parameters set Criticality_Criterion_01_grade=Criticality_Criterion_01_grade/100.0 where Criticality_Criterion_01_grade>1.0;
update item_Parameters set Criticality_Criterion_02_grade=Criticality_Criterion_02_grade/100.0 where Criticality_Criterion_02_grade>1.0;
update item_Parameters set Criticality_Criterion_03_grade=Criticality_Criterion_03_grade/100.0 where Criticality_Criterion_03_grade>1.0;
update item_Parameters set Criticality_Criterion_04_grade=Criticality_Criterion_04_grade/100.0 where Criticality_Criterion_04_grade>1.0;
update item_Parameters set Criticality_Criterion_05_grade=Criticality_Criterion_05_grade/100.0 where Criticality_Criterion_05_grade>1.0;

update spu_Parameter set Criticality_Criterion_01_grade=Criticality_Criterion_01_grade/100.0 where Criticality_Criterion_01_grade>1.0;
update spu_Parameter set Criticality_Criterion_02_grade=Criticality_Criterion_02_grade/100.0 where Criticality_Criterion_02_grade>1.0;
update spu_Parameter set Criticality_Criterion_03_grade=Criticality_Criterion_03_grade/100.0 where Criticality_Criterion_03_grade>1.0;
update spu_Parameter set Criticality_Criterion_04_grade=Criticality_Criterion_04_grade/100.0 where Criticality_Criterion_04_grade>1.0;
update spu_Parameter set Criticality_Criterion_05_grade=Criticality_Criterion_05_grade/100.0 where Criticality_Criterion_05_grade>1.0;


/* CalculoDoNivelDeServico
Parameters_analysis Service_Level_A_Criticality_0
Parameters_analysis Service_Level_A_Criticality_10

Parameters_analysis Service_Level_B_Criticality_0
Parameters_analysis Service_Level_B_Criticality_10

Parameters_analysis Service_Level_C_Criticality_0
Parameters_analysis Service_Level_C_Criticality_10
*/

update Parameters_analysis set Service_Level_A_Criticality_0=Service_Level_A_Criticality_0/100.0 where Service_Level_A_Criticality_0>1.0;
update Parameters_analysis set Service_Level_A_Criticality_10=Service_Level_A_Criticality_10/100.0 where Service_Level_A_Criticality_10>1.0;

update Parameters_analysis set Service_Level_B_Criticality_0=Service_Level_B_Criticality_0/100.0 where Service_Level_B_Criticality_0>1.0;
update Parameters_analysis set Service_Level_B_Criticality_10=Service_Level_B_Criticality_10/100.0 where Service_Level_B_Criticality_10>1.0;

update Parameters_analysis set Service_Level_C_Criticality_0=Service_Level_C_Criticality_0/100.0 where Service_Level_C_Criticality_0>1.0;
update Parameters_analysis set Service_Level_C_Criticality_10=Service_Level_C_Criticality_10/100.0 where Service_Level_C_Criticality_10>1.0;

/* SpuController
spu.getParameters().getServiceLevel()
*/

update spu_Parameter set Service_Level=Service_Level/100.0 where Service_Level>1.0;

/* SupplyAlternativeController
 * 
 */

/* JdbcSpuDao
 * spuParameter.getEffectiveCriticalityCriterion01Weight 
 */

update spu_Parameter set Effective_Criticality_Criterion_01_Weight=Service_Level/100.0 where Service_Level>1.0;


/* CalculoPrevisibilidade 
 * 
 */

update Parameters_analysis set Confidence_level=Confidence_level/100.0 where Confidence_level>1.0;