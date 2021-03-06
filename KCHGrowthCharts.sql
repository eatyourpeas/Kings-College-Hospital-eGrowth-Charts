USE [Medinet]
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartPopulateTableWithZsandCs]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GrowthChartPopulateTableWithZsandCs] 
@Sex Int = 1
AS

UPDATE tbl_growthcharts1
Set years1=years

--- girls heights start here..........

--,[LHAGMinus5Z]=dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-5)
--,[LHAGMinus4Z] =dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-4)
--,[LHAGMinus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-3)
--,[LHAG04thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,0.4)
--,[LHAG2ndCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,2)
--,[LHAG3rdCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3)
--,[LHAG9thCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,9)
--,[LHAG10thCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,10)
--,[LHAG25thCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,25)
--,[LHAG75thCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,75)
--,[LHAG90thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,90)
--,[LHAG91thCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,91)
--,[LHAG97thCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,97)
--,[LHAG98thCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,98)
--,[LHAG996thCentile]=dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,99.6)
--,[LHAGPlus3Z]=dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3)
--,[LHAGPlus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,4)
--,[LHAGPlus5Z]= dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,5)

-------weights boys start here............
--,[WFABMinus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,-5)
--,[WFABMinus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,-4)
--,[WFABMinus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,-3)
--,[WFAB04thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,0.4)
--,[WFAB2ndCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,2) 
--,[WFAB3rdCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,3) 
--,[WFAB9thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,9) 
--,[WFAB10thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,10) 
--,[WFAB25thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,25) 
--,[WFAB75thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,75) 
--,[WFAB90thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,90)
--,[WFAB91thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,91) 
--,[WFAB97thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,97)
--,[WFAB98thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,98)
--,[WFAB996thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,99.6)
--,[WFABPlus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,3)
--,[WFABPlus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,4)
--,[WFABPlus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,5)
--WHERE years >0

-----weights girls start here............
--,[WFAGMinus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,-5)
--,[WFAGMinus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,-4)
--,[WFAGMinus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,-3)
--,[WFAG04thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,0.4)
--,[WFAG2ndCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,2) 
--,[WFAG3rdCentile]= dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,3) 
--,[WFAG9thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,9) 
--,[WFAG10thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,10) 
--,[WFAG25thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,25) 
--,[WFAG75thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,75) 
--,[WFAG90thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,90)
--,[WFAG91thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,91) 
--,[WFAG97thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,97)
--,[WFAG98thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,98)
--,[WFAG996thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,99.6)
--,[WFAGPlus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,3)
--,[WFAGPlus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,4)
--,[WFAGPlus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [WFALB] ELSE [WFALG] END,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END,5)
--WHERE 
--years >0

-------- BMI Boys starts here

--,[BMIABMinus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-5)
--,[BMIABMinus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-4)
--,[BMIABMinus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-3)
--,[BMIAB04thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END, 0.4)
--,[BMIAB2ndCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,2) 
--,[BMIAB3rdCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,3) 
--,[BMIAB9thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,9) 
--,[BMIAB10thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,10) 
--,[BMIAB25thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,25) 
--,[BMIAB75thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,75) 
--,[BMIAB90thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,90)
--,[BMIAB91thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,91) 
--,[BMIAB97thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,97) 
--,[BMIAB98thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,98) 
--,[BMIAB996thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,99.6) 
--,[BMIABPlus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,3)
--,[BMIABPlus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,4)
--,[BMIABPlus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,5)
--WHERE Charttype=2 or (
--((ChartType=1 and years >14) or (charttype=1 and years<9.7)) --BETWEEN 11 and 15 
----and years!=9.83
--or charttype=3)

-------- BMI Girls starts here

--,[BMIAGMinus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-5)
--,[BMIAGMinus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-4)
--,[BMIAGMinus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-3)
--,[BMIAG04thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END, 0.4)
--,[BMIAG2ndCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,2) 
--,[BMIAG3rdCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,3) 
--,[BMIAG9thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,9) 
--,[BMIAG10thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,10) 
--,[BMIAG25thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,25) 
--,[BMIAG75thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,75) 
--,[BMIAG90thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,90)
--,[BMIAG91thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,91) 
--,[BMIAG97thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,97) 
--,[BMIAG98thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,98) 
--,[BMIAG996thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,99.6) 
--,[BMIAGPlus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,3)
--,[BMIAGPlus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,4)
--,[BMIAGPlus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,5)
--WHERE Charttype=2 or (
--((ChartType=1 and years >14) or (charttype=1 and years<9.7)) --BETWEEN 11 and 15 
----and years!=9.83
--or charttype=3)

-- head circumferences start here (BOYS)

--,[HCBMinus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,-5)
--,[HCBMinus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,-4)
--,[HCBMinus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,-3)
--,[HCB04thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,0.4)
--,[HCB2ndCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,2) 
--,[HCB3rdCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,3) 
--,[HCB9thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,9) 
--,[HCB10thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,10) 
--,[HCB25thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,25) 
--,[HCB75thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,75) 
--,[HCB90thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,90) 
--,[HCB91thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,91) 
--,[HCB97thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,97) 
--,[HCB98thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,98) 
--,[HCB996thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,99.6)
--,[HCBPlus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,3)
--,[HCBPlus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,4)
--,[HCBPlus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,5)


---- head circumferences start here (GIRLS)

--,[HCGMinus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,-5)
--,[HCGMinus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,-4)
--,[HCGMinus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,-3)
--,[HCG04thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,0.4)
--,[HCG2ndCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,2) 
--,[HCG3rdCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,3) 
--,[HCG9thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,9) 
--,[HCG10thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,10) 
--,[HCG25thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,25) 
--,[HCG75thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,75) 
--,[HCG90thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,90) 
--,[HCG91thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,91) 
--,[HCG97thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,97) 
--,[HCG98thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,98) 
--,[HCG996thCentile] = dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,99.6)
--,[HCGPlus3Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,3)
--,[HCGPlus4Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,4)
--,[HCGPlus5Z] = dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [HCLB] ELSE [HCLG] END,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END,5)
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartResultsByClient]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_GrowthChartResultsByClient] 
@ClientGUID numeric (16,0) = 1000203998020001
AS
Select O.Entered, O.DisplayName, O.RecordedDtm, O.ValueNum, O.DisplaySequence, O.HistorySeqNum
, O.*
FROM EPRLive.[dbo].[CV3Observation] O
join EPRLive.dbo.CV3Client C
ON O.ClientGUID=C.GUID
WHERE 
O.ObsItemGUID IN(3000001279290001, 6000001043290001, 2000001279290001, 7000001043290001)
AND O.ClientGUID=@ClientGUID--@ClientGUID
--AND O.HistorySeqNum=(select top 1 HistorySeqNum From EPRLive.[dbo].[CV3Observation] O1 WHERE O1.OriginalObsGUID=O.OriginalObsGUID)
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartAgeYMDFromAgeInYears]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChartAgeYMDFromAgeInYears]
	(@CalculatedAge Float)
RETURNS Varchar(50)
AS
BEGIN
DECLARE @AgeCalc AS FLOAT
DECLARE @AGE AS Varchar(50)
DECLARE @Remainder AS FLOAT
DECLARE @RemainderInYears FLOAT
DECLARE @RemainderInMonths FLOAT
DECLARE @RemainderInMonthsInYears FLOAT
DECLARE @RemainderInWeeks FLOAT
DECLARE @RemainderInWeeksInYears FLOAT
DECLARE @RemainderInDays FLOAT
DECLARE @RemainderInDaysInYears FLOAT
DECLARE @NormalGestationalPeriodInYears FLOAT

SELECT @NormalGestationalPeriodInYears=(7*40)/365.25
SELECT @AgeCalc =
CASE 
WHEN SIGN(@CalculatedAge)=1 OR SIGN(@CalculatedAge)=0 THEN @CalculatedAge
ELSE
(@NormalGestationalPeriodInYears+@CalculatedAge)
END

SELECT @RemainderInYears = FLOOR(ABS(@AGECalc))
SELECT @RemainderInMonths = FLOOR((ABS(@AgeCalc)-@RemainderInYears)*12)
SELECT @RemainderInMonthsInYears = @RemainderInMonths/12
SELECT @Remainder = ABS(@AgeCalc)-(@RemainderInYears+@RemainderInMonthsInYears)
SELECT @RemainderInWeeks = FLOOR(@Remainder*52)
SELECT @RemainderInWeeksInYears = @RemainderInWeeks/52
SELECT @Remainder = ABS(@AgeCalc)-(@RemainderInYears+@RemainderInMonthsInYears+@RemainderInWeeksInYears)
SELECT @RemainderInDays = FLOOR(@Remainder*365.25)
SELECT @RemainderInDaysInYears = @RemainderInDays/365.25
SELECT @Remainder = ABS(@AgeCalc)-(@RemainderInYears+@RemainderInMonthsInYears+@RemainderInWeeksInYears+@RemainderInDaysInYears)


RETURN 
CASE WHEN @RemainderInYears > 0 THEN 
CASE WHEN @AGECalc<0 THEN '-' ELSE '' END 
+ Convert(varchar(3),@RemainderInYears) + ' years ' ELSE '' END
+
CASE WHEN @RemainderInMonths > 0 THEN 
CASE WHEN @AGECalc<0 THEN '-' ELSE '' END 
+ Convert(varchar(3),@RemainderInMonths) + ' months ' ELSE '' END
+
CASE WHEN @RemainderInWeeks > 0 THEN 
CASE WHEN @AGECalc<0 THEN '-' ELSE '' END 
+ Convert(varchar(3),@RemainderInWeeks) + ' weeks '  ELSE '' END
+
CASE WHEN @RemainderInDays > 0 THEN 
CASE WHEN @AGECalc<0 THEN '-' ELSE '' END 
+ Convert(varchar(3),@RemainderInDays) + ' days '  ELSE '' END
+ CASE WHEN SIGN(@CalculatedAge)=-1 THEN
+ 'gestation' ELSE + '' END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartGetClientDetails]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_GrowthChartGetClientDetails] 
@ClientGUID numeric (16,0) = 4000031542020001
As
Select 
C.IDCode AS [Hospital_Number],
--ISNULL(LEFT(FirstName,1),'') + ' ' + ISNULL(LEFT(LastName,1),'') AS ClientDisplayName,
ISNULL(FirstName,'') + ' ' + ISNULL(LastName,'') AS ClientDisplayName,
GenderCode [Sex],
CASE 
WHEN Left(GenderCode,1) = 'M' Then 1
WHEN Left(GenderCode,1) = 'F' Then 2
END [SexCode]
,[dbo].[ufn_GrowthChartGetBirthDateFromEPRDayMonthYear](BirthDayNum,BirthMonthNum,BirthYearNum) [DateOfBirth]
,dbo.ufn_GrowthChartAge([dbo].[ufn_GrowthChartGetBirthDateFromEPRDayMonthYear](BirthDayNum,BirthMonthNum,BirthYearNum),GetDate()) Age

FROM EPRLIVE.dbo.CV3Client C
WHERE C.GUID=@ClientGUID
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartAdjGestYears]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChartAdjGestYears]
(@GestationWeeks INT, 
@GestationDays INT)
RETURNS float 
AS
BEGIN
Declare @LengthOfAPregnancyInDays Float
Declare @LengthOfThisPregnancyInDays Float
Declare @GestationAdj Float


Select @LengthOfAPregnancyInDays = (40*7)
IF @GestationWeeks<37
BEGIN
Select @LengthOfThisPregnancyInDays =((ISNULL(@GestationWeeks,40) * 7) + iSNULL(@GestationDays,0))
END
ELSE
BEGIN
SELECT @LengthOfThisPregnancyInDays = (40*7)
END

Select @GestationAdj = (@LengthOfAPregnancyInDays-@LengthOfThisPregnancyInDays)/365.25

RETURN @GestationAdj
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartNthRoot]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION  [dbo].[ufn_GrowthChartNthRoot] (
@Number float,@N float
) 
RETURNS float -- @N th root of @Number
/* 
* Return's the N'th Root of a number
*
* Equivalent Template: POWER (<number>, 1 / <root>)
*
* Example:
SELECT dbo.udf_NthRoot (1000, 3) as [Cube root of 1000]
*
* c Copyright 2002 Andrew Novick http://www.NovickSoftware.com
* You may use this function in any of your SQL Server databases
* including databases that you sell, so long as they contain 
* other unrelated database objects. You may not publish this 
* UDF either in print or electronically.
* Published as T-SQL UDF of Week Newsletter Vol 2 #4 12/9/03 
http://www.NovickSoftware.com/UDFofWeek/UDFofWeek.htm
****************************************************************/
AS BEGIN
RETURN POWER(@Number , 1 / @N)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartAgeAsFractionOfYear]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChartAgeAsFractionOfYear]
(@DateOfBirth DateTime,
@RecordedDtm DateTime,
@GestationAdjustmentYears Float
)
RETURNS FLOAT 
AS
BEGIN
DECLARE @AgeAsFractionOfYear AS FLOAT
BEGIN 
IF @GestationAdjustmentYears = 0
      BEGIN 
      SELECT @AgeAsFractionOfYear=Convert(Float,DateDiff(Day,@DateOfBirth,@RecordedDtm))/365.25 
      END

ELSE IF @GestationAdjustmentYears<=(8*7)/365.25--This baby is born preterm but > 32 weeks therefore correct age to one year 
SELECT @AgeAsFractionOfYear=(Convert(Float,DateDiff(Day,@DateOfBirth,@RecordedDtm))/365.25
-     (CASE WHEN  Convert(Float,DateDiff(Day,@DateOfBirth,@RecordedDtm))/365.25 <1 Then 
            @GestationAdjustmentYears
ELSE 
      0
END))
ELSE IF @GestationAdjustmentYears>(8*7)/365.25--This baby is born < 32 weeks therefore correct age to two years 
SELECT @AgeAsFractionOfYear=(Convert(Float,DateDiff(Day,@DateOfBirth,@RecordedDtm))/365.25
-     (CASE WHEN  Convert(Float,DateDiff(Day,@DateOfBirth,@RecordedDtm))/365.25 <2 Then 
            @GestationAdjustmentYears 
ELSE 
      0
END))
END
RETURN @AgeAsFractionOfYear
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetBirthDateFromEPR]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[ufn_GrowthChartGetBirthDateFromEPR](@ClientGUID numeric (16,0))
RETURNS DateTime
AS
BEGIN
	-- Declare the return variable here
	DECLARE @DateOfBirth DateTime

	-- Add the T-SQL statements to compute the return value here
	SELECT @DateOfBirth = convert(
		datetime,convert(varChar(2),BirthDayNum) +'/'+
		convert(VarChar(2),BirthMonthNum)+'/'+
		convert(varChar(4),BirthYearNum) )
		FROM EPRLive.dbo.CV3Client C WHERE C.GUID=@ClientGUID

	-- Return the result of the function
	RETURN (@DateOfBirth)

END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartMidParentalHeight]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  FUNCTION [dbo].[ufn_GrowthChartMidParentalHeight] (
@MaternalHeight Float
,@PaternalHeight Float
,@GenderCode int)

RETURNS Float AS
BEGIN
DECLARE @MidParentalHeight Float

BEGIN
SELECT @MidParentalHeight =
CASE WHEN @GenderCode = 1 Then 
			 ((@MaternalHeight + 12.5) + @PaternalHeight) / 2
        WHEN @GenderCode = 2 Then
             (@MaternalHeight + (@PaternalHeight - 12.5)) / 2
END
END
Return(@MidParentalHeight)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartMaxScores]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChartMaxScores]
(@Measurement Char(3)
,@GenderCode INT)
RETURNS float 
AS
BEGIN
DECLARE @GenderCodeScores AS FLOAT 
Select @GenderCodeScores = 
CASE
        WHEN @GenderCode = 1 And @Measurement = 'L' Then 1
        WHEN @GenderCode = 2 And @Measurement = 'L' Then 1
        WHEN @GenderCode = 1 And @Measurement = 'M' Then 178.23
        WHEN @GenderCode = 2 And @Measurement = 'M' Then 163.82
        WHEN @GenderCode = 1 And @Measurement = 'S' Then 0.03833
        WHEN @GenderCode = 2 And @Measurement = 'S' Then 0.0368
        END

RETURN Round(@GenderCodeScores,2)
END
GO
/****** Object:  Table [dbo].[tbl_GrowthChartZTable]    Script Date: 08/15/2014 11:28:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GrowthChartZTable](
	[Z] [float] NULL,
	[Centile] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartAge]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChartAge]

/*

Version 1.1

This function returns the age of a person, in years, for a given date
of birth.  Due to the limitations placed on using the GETDATE() function
within user-defined functions, todays date also needs to be supplied.

***********ALTERd by Karl Grambow.  karlgrambow@hotmail.com.*************

*/
	(@DateOfBirth datetime, @Today datetime)
RETURNS int
AS
BEGIN


DECLARE @YEAR AS INT
SELECT @YEAR = DATEDIFF(YEAR, @DateOfBirth, @Today) - (
     CASE WHEN MONTH(@Today) < MONTH(@DateOfBirth) 
          THEN 
              1
          ELSE
              CASE WHEN MONTH(@Today) = MONTH(@DateOfBirth) THEN
                   CASE WHEN DAY(@Today) < DAY(@DateOfBirth) 
                        THEN 
                             1
                        ELSE 
                             0
                   END
                   ELSE  0
              END
     END)

RETURN @YEAR
--
--
--DECLARE @Age int --Age in years.
--
--SET @Age = YEAR(@Today) - YEAR(@DateOfBirth)
--
--IF MONTH(@DateOfBirth) > MONTH(@Today)
--   BEGIN
--	SET @Age = @Age - 1
--   END
--
--IF MONTH(@DateOfBirth) = MONTH(@Today)
--   BEGIN
--	IF DAY(@DateOfBirth) > DAY(@Today)
--           BEGIN
--		SET @Age = @Age - 1
--   	   END
--   END
--
--RETURN (@Age)



END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChart2DP]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChart2DP] (@Number decimal (14,4))  

RETURNS numeric (16,2) AS  

BEGIN 

DECLARE @NewNumber numeric (16,2)

select @NewNumber = Convert(Numeric (16,2), @Number)
    
Return(@NewNumber)

END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetBirthDateFromEPRDayMonthYear]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[ufn_GrowthChartGetBirthDateFromEPRDayMonthYear](@Day int, @Month int, @Year int)
RETURNS DateTime
AS
BEGIN
	-- Declare the return variable here
	DECLARE @DateOfBirth DateTime

	-- Add the T-SQL statements to compute the return value here
	SELECT @DateOfBirth = convert(
		datetime,convert(varChar(2),@Day) +'/'+
		convert(VarChar(2),@Month)+'/'+
		convert(varChar(4),@year) )

	-- Return the result of the function
	RETURN (@DateOfBirth)

END
GO
/****** Object:  Table [dbo].[tbl_GrowthChartUseAudit]    Script Date: 08/15/2014 11:28:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GrowthChartUseAudit](
	[GUID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[ClientGUID] [numeric](16, 0) NULL,
	[ClientVisitGUID] [numeric](16, 0) NULL,
	[AccessDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetHeightByClientAndDate]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[ufn_GrowthChartGetHeightByClientAndDate]
(@ClientGUID numeric (16,0),
@RecordedDtm DateTime
)
RETURNS Float
AS
BEGIN
DECLARE @Height Float

BEGIN 
SELECT @Height 
= (Select TOP 1 (O1.ValueNum/100) FROM EPRLive.[dbo].[CV3Observation] O1
join EPRLive.dbo.CV3Client C1
ON O1.ClientGUID=C1.GUID
WHERE 
O1.ObsItemGUID = 7000001043290001 --SELECT GUID, [Name] FROM [EPRLive].[dbo].[CV3ObsCatalogItem] where Name Like '%Height in cm%'
AND O1.ClientGUID=@ClientGUID
AND O1.RecordedDtm=@RecordedDtm)
RETURN @Height
END
END
GO
/****** Object:  Table [dbo].[tbl_GrowthCharts]    Script Date: 08/15/2014 11:28:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GrowthCharts](
	[ChartType] [int] NULL,
	[ChartTypeText] [varchar](50) NULL,
	[Week-Month] [float] NULL,
	[YEARS] [float] NULL,
	[Years1] [float] NULL,
	[YearsFull] [float] NULL,
	[LHALB] [float] NULL,
	[LHAMB] [float] NULL,
	[LHASB] [float] NULL,
	[LHALG] [float] NULL,
	[LHAMG] [float] NULL,
	[LHASG] [float] NULL,
	[WFALB] [float] NULL,
	[WFAMB] [float] NULL,
	[WFASB] [float] NULL,
	[WFALG] [float] NULL,
	[WFAMG] [float] NULL,
	[WFASG] [float] NULL,
	[BMIALB] [float] NULL,
	[BMIAMB] [float] NULL,
	[BMIASB] [float] NULL,
	[BMIALG] [float] NULL,
	[BMIAMG] [float] NULL,
	[BMIASG] [float] NULL,
	[HCLB] [float] NULL,
	[HCMB] [float] NULL,
	[HCSB] [float] NULL,
	[HCLG] [float] NULL,
	[HCMG] [float] NULL,
	[HCSG] [float] NULL,
	[SHALB] [float] NULL,
	[SHAMB] [float] NULL,
	[SHASB] [float] NULL,
	[SHALG] [float] NULL,
	[SHAMG] [float] NULL,
	[SHASG] [float] NULL,
	[LLALB] [float] NULL,
	[LLAMB] [float] NULL,
	[LLASB] [float] NULL,
	[LLALG] [float] NULL,
	[LLAMG] [float] NULL,
	[LLASG] [float] NULL,
	[MaleQuery] [float] NULL,
	[FemaleQuery] [float] NULL,
	[MaleSH] [float] NULL,
	[FemaleSH] [float] NULL,
	[MaleLL] [float] NULL,
	[FemaleLL] [float] NULL,
	[Extra1] [float] NULL,
	[Extra2] [float] NULL,
	[Extra3] [float] NULL,
	[Extra4] [float] NULL,
	[Extra5] [float] NULL,
	[Extra6] [float] NULL,
	[Extra7] [float] NULL,
	[Extra8] [float] NULL,
	[Extra9] [float] NULL,
	[Extra10] [float] NULL,
	[Extra11] [float] NULL,
	[Extra12] [float] NULL,
	[111] [float] NULL,
	[1111] [float] NULL,
	[LHABMinus5Z] [float] NULL,
	[LHABMinus4Z] [float] NULL,
	[LHABMinus3Z] [float] NULL,
	[LHAB04thCentile] [float] NULL,
	[LHAB2ndCentile] [float] NULL,
	[LHAB3rdCentile] [float] NULL,
	[LHAB9thCentile] [float] NULL,
	[LHAB10thCentile] [float] NULL,
	[LHAB25thCentile] [float] NULL,
	[LHAB75thCentile] [float] NULL,
	[LHAB90thCentile] [float] NULL,
	[LHAB91thCentile] [float] NULL,
	[LHAB97thCentile] [float] NULL,
	[LHAB98thCentile] [float] NULL,
	[LHAB996thCentile] [float] NULL,
	[LHABPlus3Z] [float] NULL,
	[LHABPlus4Z] [float] NULL,
	[LHABPlus5Z] [float] NULL,
	[LHAGMinus5Z] [float] NULL,
	[LHAGMinus4Z] [float] NULL,
	[LHAGMinus3Z] [float] NULL,
	[LHAG04thCentile] [float] NULL,
	[LHAG2ndCentile] [float] NULL,
	[LHAG3rdCentile] [float] NULL,
	[LHAG9thCentile] [float] NULL,
	[LHAG10thCentile] [float] NULL,
	[LHAG25thCentile] [float] NULL,
	[LHAG75thCentile] [float] NULL,
	[LHAG90thCentile] [float] NULL,
	[LHAG91thCentile] [float] NULL,
	[LHAG97thCentile] [float] NULL,
	[LHAG98thCentile] [float] NULL,
	[LHAG996thCentile] [float] NULL,
	[LHAGPlus3Z] [float] NULL,
	[LHAGPlus4Z] [float] NULL,
	[LHAGPlus5Z] [float] NULL,
	[WFABMinus5Z] [float] NULL,
	[WFABMinus4Z] [float] NULL,
	[WFABMinus3Z] [float] NULL,
	[WFAB04thCentile] [float] NULL,
	[WFAB2ndCentile] [float] NULL,
	[WFAB3rdCentile] [float] NULL,
	[WFAB9thCentile] [float] NULL,
	[WFAB10thCentile] [float] NULL,
	[WFAB25thCentile] [float] NULL,
	[WFAB75thCentile] [float] NULL,
	[WFAB90thCentile] [float] NULL,
	[WFAB91thCentile] [float] NULL,
	[WFAB97thCentile] [float] NULL,
	[WFAB98thCentile] [float] NULL,
	[WFAB996thCentile] [float] NULL,
	[WFABPlus3Z] [float] NULL,
	[WFABPlus4Z] [float] NULL,
	[WFABPlus5Z] [float] NULL,
	[WFAGMinus5Z] [float] NULL,
	[WFAGMinus4Z] [float] NULL,
	[WFAGMinus3Z] [float] NULL,
	[WFAG04thCentile] [float] NULL,
	[WFAG2ndCentile] [float] NULL,
	[WFAG3rdCentile] [float] NULL,
	[WFAG9thCentile] [float] NULL,
	[WFAG10thCentile] [float] NULL,
	[WFAG25thCentile] [float] NULL,
	[WFAG75thCentile] [float] NULL,
	[WFAG90thCentile] [float] NULL,
	[WFAG91thCentile] [float] NULL,
	[WFAG97thCentile] [float] NULL,
	[WFAG98thCentile] [float] NULL,
	[WFAG996thCentile] [float] NULL,
	[WFAGPlus3Z] [float] NULL,
	[WFAGPlus4Z] [float] NULL,
	[WFAGPlus5Z] [float] NULL,
	[BMIABMinus5Z] [float] NULL,
	[BMIABMinus4Z] [float] NULL,
	[BMIABMinus3Z] [float] NULL,
	[BMIAB04thCentile] [float] NULL,
	[BMIAB2ndCentile] [float] NULL,
	[BMIAB3rdCentile] [float] NULL,
	[BMIAB9thCentile] [float] NULL,
	[BMIAB10thCentile] [float] NULL,
	[BMIAB25thCentile] [float] NULL,
	[BMIAB75thCentile] [float] NULL,
	[BMIAB90thCentile] [float] NULL,
	[BMIAB91thCentile] [float] NULL,
	[BMIAB97thCentile] [float] NULL,
	[BMIAB98thCentile] [float] NULL,
	[BMIAB996thCentile] [float] NULL,
	[BMIABPlus3Z] [float] NULL,
	[BMIABPlus4Z] [float] NULL,
	[BMIABPlus5Z] [float] NULL,
	[BMIAGMinus5Z] [float] NULL,
	[BMIAGMinus4Z] [float] NULL,
	[BMIAGMinus3Z] [float] NULL,
	[BMIAG04thCentile] [float] NULL,
	[BMIAG2ndCentile] [float] NULL,
	[BMIAG3rdCentile] [float] NULL,
	[BMIAG9thCentile] [float] NULL,
	[BMIAG10thCentile] [float] NULL,
	[BMIAG25thCentile] [float] NULL,
	[BMIAG75thCentile] [float] NULL,
	[BMIAG90thCentile] [float] NULL,
	[BMIAG91thCentile] [float] NULL,
	[BMIAG97thCentile] [float] NULL,
	[BMIAG98thCentile] [float] NULL,
	[BMIAG996thCentile] [float] NULL,
	[BMIAGPlus3Z] [float] NULL,
	[BMIAGPlus4Z] [float] NULL,
	[BMIAGPlus5Z] [float] NULL,
	[HCBMinus5Z] [float] NULL,
	[HCBMinus4Z] [float] NULL,
	[HCBMinus3Z] [float] NULL,
	[HCB04thCentile] [float] NULL,
	[HCB2ndCentile] [float] NULL,
	[HCB3rdCentile] [float] NULL,
	[HCB9thCentile] [float] NULL,
	[HCB10thCentile] [float] NULL,
	[HCB25thCentile] [float] NULL,
	[HCB75thCentile] [float] NULL,
	[HCB90thCentile] [float] NULL,
	[HCB91thCentile] [float] NULL,
	[HCB97thCentile] [float] NULL,
	[HCB98thCentile] [float] NULL,
	[HCB996thCentile] [float] NULL,
	[HCBPlus3Z] [float] NULL,
	[HCBPlus4Z] [float] NULL,
	[HCBPlus5Z] [float] NULL,
	[HCGMinus5Z] [float] NULL,
	[HCGMinus4Z] [float] NULL,
	[HCGMinus3Z] [float] NULL,
	[HCG04thCentile] [float] NULL,
	[HCG2ndCentile] [float] NULL,
	[HCG3rdCentile] [float] NULL,
	[HCG9thCentile] [float] NULL,
	[HCG10thCentile] [float] NULL,
	[HCG25thCentile] [float] NULL,
	[HCG75thCentile] [float] NULL,
	[HCG90thCentile] [float] NULL,
	[HCG91thCentile] [float] NULL,
	[HCG97thCentile] [float] NULL,
	[HCG98thCentile] [float] NULL,
	[HCG996thCentile] [float] NULL,
	[HCGPlus3Z] [float] NULL,
	[HCGPlus4Z] [float] NULL,
	[HCGPlus5Z] [float] NULL,
	[summy] [float] NULL,
	[BMIBoys16] [float] NULL,
	[BMIBoys17] [float] NULL,
	[BMIBoys185] [float] NULL,
	[BMIBoys23] [float] NULL,
	[BMIBoys25] [float] NULL,
	[BMIBoys27] [float] NULL,
	[BMIBoys30] [float] NULL,
	[BMIBoys35] [float] NULL,
	[BMIGirls16] [float] NULL,
	[BMIGirls17] [float] NULL,
	[BMIGirls185] [float] NULL,
	[BMIGirls23] [float] NULL,
	[BMIGirls25] [float] NULL,
	[BMIGirls27] [float] NULL,
	[BMIGirls30] [float] NULL,
	[BMIGirls35] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_GrowthChartWeeksOfGestation]    Script Date: 08/15/2014 11:28:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GrowthChartWeeksOfGestation](
	[GUID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientGuid] [HVCIDdt] NULL,
	[WeeksOfGestation] [float] NULL,
	[DaysOfGestation] [float] NULL,
	[MaternalHeight] [float] NULL,
	[PaternalHeight] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetYFromZ]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChartGetYFromZ]
(@L Float --The trouble is we do not know @L and @M and @S these values - we only know @Y the measurement for the patient and [Years]
,@M Float
,@S Float
,@Z Float)
RETURNS Float
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Y Float
	SELECT @Y=CASE WHEN @L=0 THEN
		--WHEN L=0
		--Z=LOG(Y/M)/S
		--Z=(LOG(Y)-LOG(M))/S
		--Z*S=LOG(Y)-LOG(M)
		--(Z*S)+LOG(M)=LOG(Y)
		EXP((@S*@Z)+LOG(@M))  
		ELSE
		--Z=(POWER((Y/M),L)-1)/(L*S)
		--Z*L*S=(POWER((Y/M),L)-1)
		--(Z*L*S)+1=(POWER((Y/M),L)
		--dbo.ufn_GrowthChartNthRoot((Z*L*S)+1,L)=Y/M
		@M*(dbo.ufn_GrowthChartNthRoot((@Z*@L*@S)+1,@L))
		END
		-- Return the result of the function
	--RETURN round(@Y,2)
	RETURN @Y
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetCFromZ]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[ufn_GrowthChartGetCFromZ]
(@ZScore Float)
RETURNS Float
AS
BEGIN
DECLARE @Centile Float
DECLARE @Sign Bit

BEGIN
SELECT 
@Centile =
(SELECT TOP 1 
CASE 
WHEN 
SIGN(@ZScore) 
> 0 THEN 
Centile 
ELSE
(1-Centile)
END
FROM dbo.tbl_GrowthChartZTable 
ORDER BY ABS(Z-ABS(@ZScore)) ASC
)

END
RETURN (@Centile*100)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetZFromC]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[ufn_GrowthChartGetZFromC]
(@C Float)
RETURNS Float
AS
BEGIN
DECLARE @Z Float
DECLARE @NEWC Float
--all centiles in tbl_GrowthChartZTable are above 50 so those less than 50 have to be converted
SELECT @NEWC=CASE WHEN @C>=50 THEN (@C) 
WHEN @C<50 THEN (50-@C)+50
END
--In Z Table Centiles are expressed as proportions ie <1 therefore:
SELECT @NEWC=(@NEWC/100)

SELECT @Z = (SELECT TOP 1 Z FROM dbo.tbl_GrowthChartZTable ORDER BY ABS(Centile-ABS(@NEWC)) ASC)
RETURN 
CASE 
WHEN @C>=50 THEN 
	@Z
ELSE 
	-@Z
END
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetCFromZText]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[ufn_GrowthChartGetCFromZText]
(@ZScore Float)
RETURNS Varchar(20)
AS
BEGIN
DECLARE @Centile Float
DECLARE @CentileText VarChar(10)
DECLARE @Sign Bit

BEGIN
SELECT 
@Centile =
(SELECT TOP 1 
CASE 
WHEN 
SIGN(@ZScore) 
> 0 THEN 
Centile 
ELSE
(1-Centile)
END
FROM dbo.tbl_GrowthChartZTable 
ORDER BY ABS(Z-ABS(@ZScore)) ASC
)
END
SELECT @Centile=@Centile*100
SELECT @CentileText =
CASE 
WHEN @Centile <0.4 THEN '<0.4'
WHEN @Centile >=0.4 AND @Centile <=0.5 THEN Convert(Varchar(4),Round(@Centile,1))
WHEN @Centile >=0.5 AND @Centile <=99.5 THEN Convert(Varchar(4),Round(@Centile,0))
WHEN @Centile >=99.5 AND @Centile <=99.6 THEN Convert(Varchar(4),Round(@Centile,1))
WHEN @Centile >99.6 THEN '>99.6'
END

RETURN (@CentileText)
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartZScore]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[ufn_GrowthChartZScore]
(@L Float --The trouble is we do not know @L and @M and @S these values - we only know @Y the measurement for the patient and [Years]
,@M Float
,@S Float
,@Y Float)
RETURNS numeric (16,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Z Float
	-- Add the T-SQL statements to compute the return value here
	SELECT @Z=CASE WHEN @L<>0 THEN
		--(POWER((@Y/@M),@L)-1)
		--/(@L*@S)
		(EXP(@L*(LOG(@Y/@M)))-1) 
		/(@L*@S)
		ELSE
		(LOG(@Y/@M))/@S
		END
		-- Return the result of the function
	RETURN dbo.ufn_GrowthChart2dp(@Z)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartUseAuditInsert]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GrowthChartUseAuditInsert]
@Username varchar(50)
           ,@ClientGUID numeric (16,0)
           ,@ClientVisitGUID numeric (16,0)
           
           AS
INSERT INTO [Medinet].[dbo].[tbl_GrowthChartUseAudit]
           ([UserName]
           ,[ClientGUID]
           ,[ClientVisitGUID]
           ,[AccessDate])
     VALUES
           (@UserName
           ,@ClientGUID
           ,@ClientVisitGUID
           ,GetDate())
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartCubicInterpollation]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date, ,>
-- Description:	This returns the predicted L or S value for the age of the child.  It will also depend on which charttype we are using as which measurement - LH, W, HC, BMI

-- Cubic interpolation requires two ages above and below the child's age to look up the corresponding LM&S before calculation of the Z Score

-- if the value is at the threshold of the chart, linear interpolation is used, which requires only one age below and above

-- There are 2 sets of values for height at 2 years of age: this is because children go from being measured lying to being measured standing - this ALTERs a natural step down in the chart.
-- If the child is 2 years old exactly, height is used: if the child is >2y, height data will be used. If the child is under 2 y, length data will be used. 
-- Linear interpolation will be used for threshold values :at the extremes of the chart, at 2years and 4 years
-- =============================================
CREATE fUNCTION [dbo].[ufn_GrowthChartCubicInterpollation]
(
@T Float, --the age in years as a decimal
@Sex INT, 
@ChartType INT, 
@WhichMeasurement VarChar(3), 
@LorMorS Char (1)
)
RETURNS Float
AS
BEGIN
	DECLARE @t3 Float
	DECLARE @t2 Float
	DECLARE @t1 Float
	DECLARE @t0 Float
	DECLARE @y3 Float
	DECLARE @y2 Float
	DECLARE @y1 Float
	DECLARE @y0 Float
	DECLARE @InterpolatedValue FLOAT
	DECLARE @MethodOfInterpolation INT -- 0 = exact match @T with reference age, 1 = linear, 2 = cubic

	--DECLARE @2AGESBELOW FLOAT
	--DECLARE @2AGESABOVE FLOAT
	
	--SELECT @2AGESBELOW = (SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull<=@T AND YearsFull<>@T1 ORDER BY YEARS DESC)
	--SELECT @2AGESABOVE = (SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull>=@T AND YearsFull<>@T2 ORDER BY YEARS ASC)
	
	
	--SELECT @MethodOfInterpolation  = CASE
	--WHEN  @T IN(SELECT YearsFull from tbl_GrowthCharts where ChartType=@ChartType)THEN 0 -- test if exact age match: is so, look up LMS and return
	--WHEN (@2AGESBELOW IS NULL OR @2AGESABOVE IS NULL) OR (@T>=2  AND @T < 2.083 AND CHARTTYPE = 2) THEN 1 --- only 1 age above or below @T OR (age>=2 and only one age below WHEN WHO DATA)
	--WHEN 1=3 THEN 2 --THERE ARE TWO VALUES ABOVE AND BELOW: CUBIC INTERPOLATION
	--END
	
	IF @T IN(SELECT YearsFull from tbl_GrowthCharts where ChartType=@ChartType) -- test if exact age match: is so, look up LMS and return
	BEGIN
	SELECT	@METHODOFINTERPOLATION = 0 --direct match: no interpolation
	END
	
	ELSE IF (@T>-0.326 and @T<-0.307) OR (@T<23 and @t>22.917)  --- only 1 age above or below @T OR (age>=2 and only one age below WHEN WHO DATA)
	BEGIN
	SELECT	@METHODOFINTERPOLATION = 1 --start or end of chart: linear interpolation
	
	END

	ELSE IF  (@T>0.038  AND @T < 0.058 AND @CHARTTYPE = 2)  --- only 1 age below @T OR (age>2 weeks and only one age below WHEN WHO DATA)
	BEGIN
	SELECT	@METHODOFINTERPOLATION = 2 --child over 2 weeks but only one value standing below
	
	END

	ELSE IF  (@T>2  AND @T < 2.083 AND @CHARTTYPE = 2)  --- only 1 age above or below @T OR (age>=2 and only one age below WHEN WHO DATA)
	BEGIN
	SELECT	@METHODOFINTERPOLATION = 2 --child over 2 but only one value standing below
	
	END
	
	ELSE IF (@T<2  AND @T > 1.92 AND @CHARTTYPE = 2)
	BEGIN
	SELECT @METHODOFINTERPOLATION = 3 -- child under 2 but only 1 value above when measured lying down
	END

	ELSE IF (@T<4  AND @T > 3.92 AND @CHARTTYPE = 2)
	BEGIN
	SELECT @METHODOFINTERPOLATION = 3 -- child under 4 but only 1 value above on WHO chart
	END

	ELSE IF (@T>4  AND @T < 4.08 AND @CHARTTYPE = 1)
	BEGIN
	SELECT @METHODOFINTERPOLATION = 3 -- child over 4 but only 1 value below at switch from WHO to UK90 chart
	END

	ELSE 
	BEGIN
	SELECT @METHODOFINTERPOLATION = 4 ---Cubic interpolation
	END
	
if @methodofinterpolation = 0 --there is an exact match
begin
--select the l m or s for that age and return it

	IF @WhichMeasurement='LH' And @LorMorS='L' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END

	

	ELSE IF @WhichMeasurement='LH' And @LorMorS='M' And @Sex=1
	BEGIN 	
	SELECT @interpolatedvalue = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='S' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='L' And @Sex=2
	BEGIN
	SELECT @interpolatedvalue = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='M' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='S' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='L' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='M' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END	
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='S' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='L' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='M' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='S' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='L' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='M' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='S' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='L' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='M' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='S' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='L' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='M' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='S' And @Sex=1
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='L' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='M' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='S' And @Sex=2
	BEGIN 
	SELECT @interpolatedvalue = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@t AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
	END
return @interpolatedvalue

end	
	
	
	
	
	
if @methodofinterpolation = 1 OR @METHODOFINTERPOLATION = 2 OR @METHODOFINTERPOLATION = 3 -- we are near a threshold age: pull out age above and below, associated L,M or S and do linear interpolation
Begin

--	Declare @y1 float, @y2 float --these are year below and year above decimal age @T
		Declare @v1 float, @v2 float -- these are the LM or S value below or above age T
IF @METHODOFINTERPOLATION = 1 -- This the top or the bottom of the chart
BEGIN
	SELECT @y2=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull>=@T ORDER BY YEARS ASC)
	SELECT @y1=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull<=@T ORDER BY YEARS DESC)
END

IF @METHODOFINTERPOLATION = 2 -- this is an age >2 but <2.08
BEGIN
	SELECT @y2=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull>=@T ORDER BY YEARS ASC)
	SELECT @y1=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull<=@T ORDER BY YEARS DESC)
END

IF @METHODOFINTERPOLATION = 3 -- this is an age <2 but >1.92
BEGIN
	SELECT @y2=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull>=@T ORDER BY YEARS ASC)
	SELECT @y1=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull<=@T ORDER BY YEARS DESC)
END

-- now select the LMor S above and below

--get the two measurement values
	IF @WhichMeasurement='LH' And @LorMorS='L' And @Sex=1
	BEGIN
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	
	END
	ELSE IF @WhichMeasurement='LH' And @LorMorS='M' And @Sex=1
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='S' And @Sex=1
	BEGIN 
		IF @T<2
		BEGIN
			SELECT @v2 = (SELECT TOP 1 LHAsB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 LHAsB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='L' And @Sex=2
	BEGIN
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='M' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='LH' And @LorMorS='S' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='L' And @Sex=1
	BEGIN 
	IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='M' And @Sex=1
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END	
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='S' And @Sex=1
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='L' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='M' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='W' And @LorMorS='S' And @Sex=2
	BEGIN 
	IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='L' And @Sex=1
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='M' And @Sex=1
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='S' And @Sex=1
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='L' And @Sex=2
	BEGIN 
	IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='M' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='HC' And @LorMorS='S' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='L' And @Sex=1
	BEGIN 
	IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='M' And @Sex=1
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='S' And @Sex=1
	BEGIN 
	IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='L' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='M' And @Sex=2
	BEGIN 
	IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END
	
	ELSE IF @WhichMeasurement='BMI' And @LorMorS='S' And @Sex=2
	BEGIN 
		IF @T<2
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
			SELECT @v1 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL ASC)
		END
		ELSE
			BEGIN
			SELECT @v2 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@y2 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
			SELECT @v1 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@y1 AND ChartType=@ChartType ORDER BY YEARSFULL DESC)
		END
	END


	--these statements perform a linear interpolation
	

	Select @interpolatedValue = @v1 + (((@T - @y1) * (@v2 - @v1))/(@y2 - @y1))

	return @interpolatedvalue

End	
	
	
	
If @methodofInterpolation = 4 -- cubic interpolation has been selected: nested if statement to pull out the 4 ages (2 above, 2 below) and associated L, M or S and interpolate
BEGIN

--get the four time values for cubic interpolation
	SELECT @t2=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull>@T ORDER BY YEARS ASC)
	SELECT @t3=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull>@T AND YearsFull<>@T2 ORDER BY YEARS ASC)
	SELECT @t1=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull<@T ORDER BY YEARS DESC)
	SELECT @t0=(SELECT top 1 YearsFull from tbl_GrowthCharts where ChartType=@ChartType AND YearsFull<@T AND YearsFull<>@T1 ORDER BY YEARS DESC)
		
--get the four measurement values
IF @WhichMeasurement='LH' And @LorMorS='L' And @Sex=1
	BEGIN
		IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 LHALB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
	END
ELSE IF @WhichMeasurement='LH' And @LorMorS='M' And @Sex=1
BEGIN 
		IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 LHAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='LH' And @LorMorS='S' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 LHASB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='LH' And @LorMorS='L' And @Sex=2
BEGIN
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 LHALG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='LH' And @LorMorS='M' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 LHAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END

ELSE IF @WhichMeasurement='LH' And @LorMorS='S' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 LHASG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END

ELSE IF @WhichMeasurement='W' And @LorMorS='L' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 WFALB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END

ELSE IF @WhichMeasurement='W' And @LorMorS='M' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 WFAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='W' And @LorMorS='S' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 WFASB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END

ELSE IF @WhichMeasurement='W' And @LorMorS='L' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 WFALG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='W' And @LorMorS='M' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 WFAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='W' And @LorMorS='S' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 WFASG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='HC' And @LorMorS='L' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 HCLB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
	END
	
ELSE IF @WhichMeasurement='HC' And @LorMorS='M' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 HCMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='HC' And @LorMorS='S' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 HCSB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='HC' And @LorMorS='L' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 HCLG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='HC' And @LorMorS='M' And @Sex=2
BEGIN 
IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 HCMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='HC' And @LorMorS='S' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 HCSG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='BMI' And @LorMorS='L' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 BMIALB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='BMI' And @LorMorS='M' And @Sex=1
BEGIN 
IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 BMIAMB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='BMI' And @LorMorS='S' And @Sex=1
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 BMIASB FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='BMI' And @LorMorS='L' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 BMIALG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='BMI' And @LorMorS='M' And @Sex=2
BEGIN 
IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 BMIAMG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
ELSE IF @WhichMeasurement='BMI' And @LorMorS='S' And @Sex=2
BEGIN 
	IF @T<2
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y2 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y1 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS ASC)
			SELECT @y0 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS ASC)
		END
		ELSE
		BEGIN
			SELECT @y3 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T3 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y2 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T2 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y1 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T1 AND ChartType=@ChartType ORDER BY YEARS DESC)
			SELECT @y0 = (SELECT TOP 1 BMIASG FROM Tbl_GrowthCharts WHERE YearsFull=@T0 AND ChartType=@ChartType ORDER BY YEARS DESC)
		END
END
	
--these statements perform a cubic interpolation

	Declare @tt0 Float, @tt1 Float, @tt2 Float, @tt3 Float, @t01 Float, @t02 Float, @t03 Float, @t12 Float, @t13 Float, @t23 Float


	SELECT @tt0 = @t - @t0
	SELECT @tt1 = @t - @t1
	SELECT @tt2 = @t - @t2
	SELECT @tt3 = @t - @t3
	SELECT @t01 = @t0 - @t1
	SELECT @t02 = @t0 - @t2
	SELECT @t03 = @t0 - @t3
	SELECT @t12 = @t1 - @t2
	SELECT @t13 = @t1 - @t3
	SELECT @t23 = @t2 - @t3


	SELECT @InterpolatedValue = CASE
	WHEN (@t0 IS NULL OR @t3 IS NULL ) THEN NULL
	WHEN (@t1 =@t) THEN @y1
	WHEN @y0 = @y1 And @y1 = @y2 And @y2 = @y3 Then @y1
	ELSE @y0 * @tt1 * @tt2 * @tt3 /@t01 / @t02 / @t03 
	-@y1 *@tt0*@tt2 *@tt3 /@t01 /@t12 /@t13
	+@y2 *@tt0 *@tt1 *@tt3 /@t02/@t12 /@t23 
	-@y3 *@tt0 *@tt1*@tt2 /@t03 /@t13 /@t23
	END
	
END
RETURN @INTERPOLATEDVALUE
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartLengthHeightForAge]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GrowthChartLengthHeightForAge] 
@ClientGUID numeric (16,0) = 2000229566020001
,@Sex Int = 1
,@WeeksOfGestation Float=NULL
,@DaysOfGestation Float=NULL
,@AgeMin FLOAT = Null
,@AgeMax FLOAT = 30
AS
DECLARE @GestationAdjustmentYears Float
SELECT @GestationAdjustmentYears=[dbo].[ufn_GrowthChartAdjGestYears](@WeeksOfGestation,@DaysOfGestation)
DECLARE @DateOfBirth DateTime
SELECT @DateOfBirth = dbo.ufn_GrowthChartGetBirthDateFromEPR(@ClientGUID)
DECLARE @AgeAsFractionOfYear Float
SELECT @AgeAsFractionOfYear=[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,GetDate(),@GestationAdjustmentYears)


--SELECT @CHARTTYPE = CASE WHEN @AgeAsFractionOfYear BETWEEN 0.038461538 AND 4 THEN 2 ELSE 1 END


DECLARE @CHARTTYPE INT
SELECT  @CHARTTYPE = CASE 
WHEN @DateOfBirth > '11 May 2009' THEN 2 
ELSE 1 
END

DECLARE @CHARTTYPEText Varchar (50)
SELECT  @CHARTTYPEText = CASE 
WHEN @DateOfBirth > '11 May 2009' THEN 'WHO-UK'
ELSE 'British 1990' 
END

DECLARE @WhichMeasurement VARCHAR(3)
SELECT @WhichMeasurement='LH'



SELECT 
'Length/Height (cm)' AS Title
,@CHARTTYPEText AS ChartTypeText
,[Years]
,NULL TextAge
,NULL TextAgeChronological
,NULL DateTimeOfObservation
,NULL [HistorySeqNum]	
,Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END  L
,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END [Predicted]
,NULL Measured
,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END [CoefficentOfVariation]
,NULL [Z Score]
,Case When @Sex=1 THEN LHABMinus5Z ELSE LHAGMinus5Z END [Minus5Z]
,Case When @Sex=1 THEN LHABMinus4Z ELSE LHAGMinus4Z END [Minus4Z]
,Case When @Sex=1 THEN LHABMinus3Z ELSE LHAGMinus3Z END [Minus3Z]
,Case When @Sex=1 THEN LHAB04thCentile ELSE LHAG04thCentile END [0.4th Centile]
,Case When @Sex=1 THEN LHAB2ndCentile ELSE LHAG2ndCentile END [2nd Centile]
,Case When @Sex=1 THEN LHAB3rdCentile ELSE LHAG3rdCentile END [3rd Centile] 
,Case When @Sex=1 THEN LHAB9thCentile ELSE LHAG9thCentile END [9th Centile]
,Case When @Sex=1 THEN LHAB10thCentile ELSE LHAG10thCentile END [10th Centile]
,Case When @Sex=1 THEN LHAB25thCentile ELSE LHAG25thCentile END [25th Centile]
,Case When @Sex=1 THEN LHAB75thCentile ELSE LHAG75thCentile END [75th Centile]
,Case When @Sex=1 THEN LHAB90thCentile ELSE LHAG90thCentile END [90th Centile]
,Case When @Sex=1 THEN LHAB91thCentile ELSE LHAG91thCentile END [91th Centile]
,Case When @Sex=1 THEN LHAB97thCentile ELSE LHAG97thCentile END [97th Centile]
,Case When @Sex=1 THEN LHAB98thCentile ELSE LHAG98thCentile END [98th Centile]
,Case When @Sex=1 THEN LHAB996thCentile ELSE LHAG996thCentile END [99.6th Centile]
,Case When @Sex=1 THEN LHABPlus3Z ELSE LHAGPlus3Z END [Plus3Z]
,Case When @Sex=1 THEN LHABPlus4Z ELSE LHAGPlus4Z END [Plus4Z]
,Case When @Sex=1 THEN LHABPlus5Z ELSE LHAGPlus5Z END [Plus5Z]
,NULL [Centile]
,@WeeksOfGestation [WeeksOfGestation]
,NULL [PatientAge]
FROM dbo.tbl_GrowthCharts
WHERE 
(@WeeksOfGestation IS NULL AND ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
OR (@WeeksOfGestation IS NOT NULL 
AND ((ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
or (ChartType=3 AND (@AgeMin is NULL AND Years<0))
))
UNION
SELECT 
'Length/Height (cm)' AS Title
,@CHARTTYPEText --ChartTypeText
,dbo.ufn_GrowthChart2dp([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears)) --Years
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears))
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,0))
,O.RecordedDtm
,O.HistorySeqNum --
,NULL
,NULL--[Predicted]
,ValueNum --Measured
,NULL--[CoefficentOfVariation]
,dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,ValueNum
) [ZScore]
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,dbo.[ufn_GrowthChartGetCFromZText](dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,ValueNum
)
) AS CENTILE
,@WeeksOfGestation
,[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) 
FROM EPRLive.[dbo].[CV3Observation] O
join EPRLive.dbo.CV3Client C
ON O.ClientGUID=C.GUID
WHERE 
O.ObsItemGUID = 7000001043290001 --SELECT GUID, [Name] FROM [EPRLive].[dbo].[CV3ObsCatalogItem] where Name Like '%Height in cm%'
AND O.ClientGUID=@ClientGUID
AND [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) BETWEEN ISNULL(@AgeMin,-1) AND ISNULL(@AgeMax,30)
AND O.Active=1 AND O.StatusType=1
ORDER BY 1,2,3,4 Desc--@ClientGUID
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-5)[Minus5Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-4)[Minus4Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-3)[Minus3Z]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,0.4)[0.4th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,2) [2nd Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3) [3rd Centile] --3;10;25;50;75;90;97
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,9) [9th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,10) [10th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,25) [25th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,75) [75th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,90) [90th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,91) [91th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,97) [97th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,98) [98th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,99.6) [99.6th Centile]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3)[Plus3Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,4)[Plus4Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,5)[Plus5Z]
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartLengthHeightForAgeWithMPH]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GrowthChartLengthHeightForAgeWithMPH] 
@ClientGUID numeric (16,0) = 2000229566020001
,@Sex Int = 1
,@WeeksOfGestation Float=NULL
,@DaysOfGestation Float=NULL
,@AgeMin FLOAT = Null
,@AgeMax FLOAT = 30
,@MaternalHeight FLOAT=150
,@PaternalHeight FLOAT=190
AS
DECLARE @GestationAdjustmentYears Float
SELECT @GestationAdjustmentYears=[dbo].[ufn_GrowthChartAdjGestYears](@WeeksOfGestation,@DaysOfGestation)
DECLARE @DateOfBirth DateTime
SELECT @DateOfBirth = dbo.ufn_GrowthChartGetBirthDateFromEPR(@ClientGUID)
DECLARE @AgeAsFractionOfYear Float
SELECT @AgeAsFractionOfYear=[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,GetDate(),@GestationAdjustmentYears)
DECLARE @MidParentalHeight FLOAT
SELECT @MidParentalHeight=dbo.ufn_GrowthChartMidparentalHeight(@MaternalHeight,@PaternalHeight,@Sex) 

-- Put in MidPaternalHeight Function/Calculation
DECLARE @CHARTTYPE INT
--SELECT @CHARTTYPE = CASE WHEN @AgeAsFractionOfYear BETWEEN 0.038461538 AND 4 THEN 2 ELSE 1 END

SELECT  @CHARTTYPE = CASE 
WHEN @DateOfBirth > '11 May 2009' THEN 2 
ELSE 1 
END

DECLARE @CHARTTYPEText Varchar (50)
SELECT  @CHARTTYPEText = CASE 
WHEN @DateOfBirth > '11 May 2009' THEN 'WHO-UK'
ELSE 'British 1990' 
END
DECLARE @WhichMeasurement VARCHAR(3)
SELECT @WhichMeasurement='LH'



SELECT 
'Length/Height (cm)' AS Title
,@CHARTTYPEText AS ChartTypeText
,[Years]
,NULL TextAge
,NULL TextAgeChronological
,NULL DateTimeOfObservation
,NULL [HistorySeqNum]	
,Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END  L
,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END [Predicted]
,NULL Measured
,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END [CoefficentOfVariation]
,NULL [Z Score]
,Case When @Sex=1 THEN LHABMinus5Z ELSE LHAGMinus5Z END [Minus5Z]
,Case When @Sex=1 THEN LHABMinus4Z ELSE LHAGMinus4Z END [Minus4Z]
,Case When @Sex=1 THEN LHABMinus3Z ELSE LHAGMinus3Z END [Minus3Z]
,Case When @Sex=1 THEN LHAB04thCentile ELSE LHAG04thCentile END [0.4th Centile]
,Case When @Sex=1 THEN LHAB2ndCentile ELSE LHAG2ndCentile END [2nd Centile]
,Case When @Sex=1 THEN LHAB3rdCentile ELSE LHAG3rdCentile END [3rd Centile] --3;10;25;50;75;90;97
,Case When @Sex=1 THEN LHAB9thCentile ELSE LHAG9thCentile END [9th Centile]
,Case When @Sex=1 THEN LHAB10thCentile ELSE LHAG10thCentile END [10th Centile]
,Case When @Sex=1 THEN LHAB25thCentile ELSE LHAG25thCentile END [25th Centile]
,Case When @Sex=1 THEN LHAB75thCentile ELSE LHAG75thCentile END [75th Centile]
,Case When @Sex=1 THEN LHAB90thCentile ELSE LHAG90thCentile END [90th Centile]
,Case When @Sex=1 THEN LHAB91thCentile ELSE LHAG91thCentile END [91th Centile]
,Case When @Sex=1 THEN LHAB97thCentile ELSE LHAG97thCentile END [97th Centile]
,Case When @Sex=1 THEN LHAB98thCentile ELSE LHAG98thCentile END [98th Centile]
,Case When @Sex=1 THEN LHAB996thCentile ELSE LHAG996thCentile END [99.6th Centile]
,Case When @Sex=1 THEN LHABPlus3Z ELSE LHAGPlus3Z END [Plus3Z]
,Case When @Sex=1 THEN LHABPlus4Z ELSE LHAGPlus4Z END [Plus4Z]
,Case When @Sex=1 THEN LHABPlus5Z ELSE LHAGPlus5Z END [Plus5Z]

,NULL [Centile]
,@WeeksOfGestation [WeeksOfGestation]
,NULL [PatientAge]
FROM dbo.tbl_GrowthCharts
WHERE 
(@WeeksOfGestation IS NULL AND ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
OR (@WeeksOfGestation IS NOT NULL 
AND ((ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
or (ChartType=3 AND (@AgeMin is NULL AND Years<0))
))
UNION
--SELECT 
--'Length/Height (cm)' AS Title
--,@CHARTTYPEText --ChartTypeText
--,dbo.ufn_GrowthChart2dp([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears)) --Years
--,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears))
--,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,0))
--,O.RecordedDtm
--,O.HistorySeqNum --
--,NULL
--,NULL--[Predicted]
--,ValueNum --Measured
--,NULL--[CoefficentOfVariation]
--,dbo.ufn_GrowthChartZScore(
-- dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
--,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
--,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
--,ValueNum
--) [ZScore]
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,NULL
--,dbo.[ufn_GrowthChartGetCFromZText](dbo.ufn_GrowthChartZScore(
-- dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
--,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
--,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
--,ValueNum
--)
--) AS CENTILE
--,@WeeksOfGestation
--,[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) 
--FROM EPRLive.[dbo].[CV3Observation] O
--join EPRLive.dbo.CV3Client C
--ON O.ClientGUID=C.GUID
--WHERE 
--O.ObsItemGUID = 7000001043290001 --SELECT GUID, [Name] FROM [EPRLive].[dbo].[CV3ObsCatalogItem] where Name Like '%Height in cm%'
--AND O.ClientGUID=@ClientGUID
--AND [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) BETWEEN ISNULL(@AgeMin,-1) AND ISNULL(@AgeMax,30)
--AND O.Active=1 AND O.StatusType=1
--UNION
SELECT 
'Length/Height (cm)' AS Title
,@CHARTTYPEText AS ChartTypeText
,[Years]
,NULL TextAge
,NULL TextAgeChronological
,NULL DateTimeOfObservation
,NULL [HistorySeqNum]	
,Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END  L
,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END [Predicted]
,NULL Measured
,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END [CoefficentOfVariation]
,NULL [Z Score]
,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-5)[Minus5Z]
,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-4)[Minus4Z]
,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-3)[Minus3Z]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,0.4)[0.4th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,2) [2nd Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3) [3rd Centile] --3;10;25;50;75;90;97
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,9) [9th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,10) [10th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,25) [25th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,75) [75th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,90) [90th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,91) [91th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,97) [97th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,98) [98th Centile]
,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,99.6) [99.6th Centile]
,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3)[Plus3Z]
,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,4)[Plus4Z]
,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,5)[Plus5Z]
,NULL [Centile]
,@WeeksOfGestation [WeeksOfGestation]
,NULL [PatientAge]
FROM dbo.tbl_GrowthCharts
WHERE 
ChartType=1
AND @AgeAsFractionOfYear<=4
UNION
SELECT 
'Length/Height (cm)' AS Title
,@CHARTTYPEText AS ChartTypeText
,23.01
,NULL TextAge
,NULL TextAgeChronological
,NULL DateTimeOfObservation
,NULL [HistorySeqNum]	
,NULL
,NULL
,NULL
,NULL
,NULL [Z Score]
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL [Centile]
,NULL [WeeksOfGestation]
,NULL [PatientAge]
,dbo.[ufn_GrowthChartGetCFromZText](
dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartMaxScores('L',@sex)
,dbo.ufn_GrowthChartMaxScores('M',@sex)
,dbo.ufn_GrowthChartMaxScores('S',@sex)
,@MidParentalHeight
)
) 
AS CENTILE
,NULL [WeeksOfGestation]
,NULL [PatientAge]

ORDER BY 1,2,3,4 Desc--@ClientGUID


--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-5)[Minus5Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-4)[Minus4Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,-3)[Minus3Z]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,0.4)[0.4th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,2) [2nd Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3) [3rd Centile] --3;10;25;50;75;90;97
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,9) [9th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,10) [10th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,25) [25th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,75) [75th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,90) [90th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,91) [91th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,97) [97th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,98) [98th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,99.6) [99.6th Centile]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,3)[Plus3Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,4)[Plus4Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [LHALB] ELSE [LHALG] END,Case When @Sex=1 THEN [LHAMB] ELSE [LHAMG] END,Case When @Sex=1 THEN [LHASB] ELSE [LHASG] END,5)[Plus5Z]
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartWeightForAge]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
--Brilliant J
--Makes a difference. V144769 now spot on.
 
--still problem with:
--p075738 attended 13.10.11 32+2 week female, not yet term: her weight zscore is -2.74 on EPR, -2.81 for me
--correct if you change her age to 32+1.1
--SELECT GUID FROM EPRLIVE.dbo.CV3Client where idcode='P075378'
--2000233259020001
--[dbo].[usp_GrowthChartWeightForAge]  7000226472020001,2,27,0,NULL,NULL
--dbo.usp_GrowthChartLengthHeightForAge 7000226472020001,2,27,0,NULL,NULL
 
--p073164 attended 17/5/2011 27 week male, not yet term: his weight z score -2.1 on EPR, mine -2.09: again, exact match if gestational age changed to 27+0.1:  this I am sure is a level of error we could accept, but it feels to me intuitively that it should match exactly, as all the others have. How about another decimal place?
 --P073164	12/04/2011	17/05/2011	-0.15	27	M	1.13	2	2	-2.17	-2.09
--By the way regarding centiles: 1 dp better than int
--If centile is 0 or 'below', we typically write <0.4th Centile
--Same at the other end of the scale: >99.6th centile
 
--thanks
--S

  
CREATE PROC [dbo].[usp_GrowthChartWeightForAge] 
@ClientGUID numeric (16,0) = 7000226472020001
,@Sex Int = 1
,@WeeksOfGestation Float=NULL
,@DaysOfGestation Float=NULL
,@AgeMin FLOAT = NULL
,@AgeMax FLOAT = NULL

AS
DECLARE @DateOfBirth DateTime
SELECT  @DateOfBirth = dbo.ufn_GrowthChartGetBirthDateFromEPR(@ClientGUID)
DECLARE @GestationAdjustmentYears Float
SELECT  @GestationAdjustmentYears=[dbo].[ufn_GrowthChartAdjGestYears](@WeeksOfGestation,@DaysOfGestation)

DECLARE @AgeAsFractionOfYear Float
SELECT @AgeAsFractionOfYear=[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,GetDate(),@GestationAdjustmentYears)

DECLARE @CHARTTYPE INT
SELECT  @CHARTTYPE = CASE 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR < 4 THEN 2 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR >= 4 THEN 2 
ELSE 1 
END

DECLARE @CHARTTYPEText Varchar (50)
SELECT  @CHARTTYPEText = CASE 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR < 4 THEN 'WHO-UK' 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR >= 4 THEN 'WHO-UK'
ELSE 'British 1990' 
END

DECLARE @WhichMeasurement VARCHAR(3)
SELECT @WhichMeasurement='W'

--SELECT @GestationAdjustmentYears

SELECT
'Weight (Kg)' AS Title
,@CHARTTYPEText AS ChartTypeText
,[Years]
,NULL TextAge
,NULL TextAgeChronological
,NULL DateTimeOfObservation	
,NULL [HistorySeqNum]	
,Case When @Sex=1 THEN [WFAMB] ELSE [WFAMG] END [Predicted]
,NULL Measured
,Case When @Sex=1 THEN [WFASB] ELSE [WFASG] END [CoefficentOfVariation]
,NULL [Z Score]
,Case When @Sex=1 THEN WFABMinus5Z ELSE WFAGMinus5Z END [Minus5Z]
,Case When @Sex=1 THEN WFABMinus4Z ELSE WFAGMinus4Z END [Minus4Z]
,Case When @Sex=1 THEN WFABMinus3Z ELSE WFAGMinus3Z END [Minus3Z]
,Case When @Sex=1 THEN WFAB04thCentile ELSE WFAG04thCentile END [0.4th Centile]
,Case When @Sex=1 THEN WFAB2ndCentile ELSE WFAG2ndCentile END [2nd Centile]
,Case When @Sex=1 THEN WFAB3rdCentile ELSE WFAG3rdCentile END [3rd Centile]
,Case When @Sex=1 THEN WFAB9thCentile ELSE WFAG9thCentile END [9th Centile]
,Case When @Sex=1 THEN WFAB10thCentile ELSE WFAG10thCentile END [10th Centile]
,Case When @Sex=1 THEN WFAB25thCentile ELSE WFAG25thCentile END [25th Centile]
,Case When @Sex=1 THEN WFAB75thCentile ELSE WFAG75thCentile END [75th Centile]
,Case When @Sex=1 THEN WFAB90thCentile ELSE WFAG90thCentile END [90th Centile]
,Case When @Sex=1 THEN WFAB91thCentile ELSE WFAG91thCentile END [91th Centile]
,Case When @Sex=1 THEN WFAB97thCentile ELSE WFAG97thCentile END [97th Centile]
,Case When @Sex=1 THEN WFAB98thCentile ELSE WFAG98thCentile END [98th Centile]
,Case When @Sex=1 THEN WFAB996thCentile ELSE WFAG996thCentile END [99.6th Centile]
,Case When @Sex=1 THEN WFABPlus3Z ELSE WFAGPlus3Z END [Plus3Z]
,Case When @Sex=1 THEN WFABPlus4Z ELSE WFAGPlus4Z END [Plus4Z]
,Case When @Sex=1 THEN WFABPlus5Z ELSE WFAGPlus5Z END [Plus5Z]
,NULL [Centile]
,@WeeksOfGestation [WeeksOfGestation]
,NULL [PatientAge]
FROM [Medinet].dbo.tbl_GrowthCharts
WHERE 
(@WeeksOfGestation IS NULL AND ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
OR (@WeeksOfGestation IS NOT NULL 
AND ((ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
or (ChartType=3 AND (@AgeMin is NULL AND Years<0))
))
UNION
SELECT 
'Weight (Kg)' AS Title
,@CHARTTYPEText AS ChartTypeText
,dbo.ufn_GrowthChart2dp([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears)) --Years
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears))
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,0))
,O.RecordedDtm
,O.HistorySeqNum
,NULL --[dbo].[ufn_GrowthChartWFPredicted]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,@CHARTTYPE,@GestationAdjustmentYears,@GestationAdjustmentYears)
,ValueNum [Measured]
,NULL--[CoefficentOfVariation]
,dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,ValueNum
) [ZScore]
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,dbo.[ufn_GrowthChartGetCFromZText](dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,ValueNum
)
) AS CENTILE
,@WeeksOfGestation [WeeksOfGestation]
,[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) 
FROM EPRLive.[dbo].[CV3Observation] O
join EPRLive.dbo.CV3Client C
ON O.ClientGUID=C.GUID
WHERE 
O.ObsItemGUID = 6000001043290001 --Weight
AND O.ClientGUID=@ClientGUID--@ClientGUID
AND [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) BETWEEN ISNULL(@AgeMin,-1) AND ISNULL(@AgeMax,30)
AND O.Active=1 AND O.StatusType=1
ORDER BY 1,2,3,4 Desc
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartBMIForAge]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

  
CREATE PROC [dbo].[usp_GrowthChartBMIForAge] 
@ClientGUID numeric (16,0) = 2000240600020001
,@Sex Int = 2
,@WeeksOfGestation Float=Null
,@DaysOfGestation Float=Null
,@AgeMin FLOAT = NULL
,@AgeMax FLOAT = NULL

AS
DECLARE @DateOfBirth DateTime
SELECT @DateOfBirth = dbo.ufn_GrowthChartGetBirthDateFromEPR(@ClientGUID)
DECLARE @GestationAdjustmentYears Float
SELECT @GestationAdjustmentYears=[dbo].[ufn_GrowthChartAdjGestYears](@WeeksOfGestation,@DaysOfGestation)


DECLARE @AgeAsFractionOfYear Float
SELECT @AgeAsFractionOfYear=[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,GetDate(),@GestationAdjustmentYears)




DECLARE @CHARTTYPE INT
SELECT  @CHARTTYPE = CASE 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR < 4 THEN 2 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR >= 4 THEN 2 
ELSE 1 
END

DECLARE @CHARTTYPEText Varchar (50)
SELECT  @CHARTTYPEText = CASE 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR < 4 THEN 'WHO-UK' 
WHEN @DateOfBirth > '11 May 2009' AND @AGEASFRACTIONOFYEAR >= 4 THEN 'WHO-UK'
ELSE 'British 1990' 
END

DECLARE @WhichMeasurement VARCHAR(3)
SELECT @WhichMeasurement='BMI'

SELECT
'BMI(kg/m2)' AS Title
,@CHARTTYPEText AS ChartTypeText
,[Years]
,NULL TextAge
,NULL TextAgeChronological
,NULL DateTimeOfObservation	
,NULL [HistorySeqNum]	
,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END [Predicted]
,NULL Measured
,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END [CoefficentOfVariation]
,NULL [Z Score]
,Case When @Sex=1 THEN BMIABMinus5Z ELSE BMIAGMinus5Z END [Minus5Z]
,Case When @Sex=1 THEN BMIABMinus4Z ELSE BMIAGMinus4Z END [Minus4Z]
,Case When @Sex=1 THEN BMIABMinus3Z ELSE BMIAGMinus3Z END [Minus3Z]
,Case When @Sex=1 THEN BMIAB04thCentile ELSE BMIAG04thCentile END [0.4th Centile]
,Case When @Sex=1 THEN BMIAB2ndCentile ELSE BMIAG2ndCentile END [2nd Centile]
,Case When @Sex=1 THEN BMIAB3rdCentile ELSE BMIAG3rdCentile END [3rd Centile] 
,Case When @Sex=1 THEN BMIAB9thCentile ELSE BMIAG9thCentile END [9th Centile]
,Case When @Sex=1 THEN BMIAB10thCentile ELSE BMIAG10thCentile END [10th Centile]
,Case When @Sex=1 THEN BMIAB25thCentile ELSE BMIAG25thCentile END [25th Centile]
,Case When @Sex=1 THEN BMIAB75thCentile ELSE BMIAG75thCentile END [75th Centile]
,Case When @Sex=1 THEN BMIAB90thCentile ELSE BMIAG90thCentile END [90th Centile]
,Case When @Sex=1 THEN BMIAB91thCentile ELSE BMIAG91thCentile END [91th Centile]
,Case When @Sex=1 THEN BMIAB97thCentile ELSE BMIAG97thCentile END [97th Centile]
,Case When @Sex=1 THEN BMIAB98thCentile ELSE BMIAG98thCentile END [98th Centile]
,Case When @Sex=1 THEN BMIAB996thCentile ELSE BMIAG996thCentile END [99.6th Centile]
,Case When @Sex=1 THEN BMIABPlus3Z ELSE BMIAGPlus3Z END [Plus3Z]
,Case When @Sex=1 THEN BMIABPlus4Z ELSE BMIAGPlus4Z END [Plus4Z]
,Case When @Sex=1 THEN BMIABPlus5Z ELSE BMIAGPlus5Z END [Plus5Z]
,NULL AS Centile
,@WeeksOfGestation [WeeksOfGestation]
,NULL [PatientAge]

FROM [Medinet].dbo.tbl_GrowthCharts
WHERE 
(@WeeksOfGestation IS NULL AND ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
OR (@WeeksOfGestation IS NOT NULL 
AND ((ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
or (ChartType=3 AND (@AgeMin is NULL AND Years<0))
))
AND Years >(2/52)
UNION
SELECT 
'BMI(kg/m2)' AS Title
,@CHARTTYPEText AS ChartTypeText
,dbo.ufn_GrowthChart2dp([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears)) --Years
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears))
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,0))
,O.RecordedDtm
,O.[HistorySeqNum]
,NULL
,CASE WHEN ValueNum IS NOT NULL AND [dbo].[ufn_GrowthChartGetHeightByClientAndDate](@ClientGUID,O.RecordedDtm) IS NOT NULL THEN
dbo.ufn_GrowthChart2dp(ValueNum/(SQUARE([dbo].[ufn_GrowthChartGetHeightByClientAndDate](@ClientGUID,O.RecordedDtm))))
ELSE NULL
END -- This Function will need to be ammended to point at EPRLIVE
,NULL--[CoefficentOfVariation]
,dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,dbo.ufn_GrowthChart2dp(ValueNum/(SQUARE([dbo].[ufn_GrowthChartGetHeightByClientAndDate](@ClientGUID,O.RecordedDtm))))
) [ZScore]
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,CASE WHEN ValueNum IS NOT NULL AND [dbo].[ufn_GrowthChartGetHeightByClientAndDate](@ClientGUID,O.RecordedDtm) IS NOT NULL THEN
dbo.[ufn_GrowthChartGetCFromZText](dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,dbo.ufn_GrowthChart2dp(ValueNum/(SQUARE([dbo].[ufn_GrowthChartGetHeightByClientAndDate](@ClientGUID,O.RecordedDtm))))
))
ELSE
NULL
END
 AS Centile
,@WeeksOfGestation [WeeksOfGestation]
,[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) 


FROM EPRLive.[dbo].[CV3Observation] O
join EPRLive.dbo.CV3Client C
ON O.ClientGUID=C.GUID
WHERE 
O.ObsItemGUID = 6000001043290001 --Weight
AND O.ClientGUID=@ClientGUID--@ClientGUID
AND [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) BETWEEN ISNULL(@AgeMin,-1) AND ISNULL(@AgeMax,30)
AND O.Active=1 AND O.StatusType=1
AND [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears)  > 0.04--(2/52)
ORDER BY 1,2,3,4 DESC
--CCV3Client.GUID = 3000204228020001 
--DisplayName             ObsItemGUID
--Head Circumference      2000001279290001
--Length/Height           3000001279290001
--Weight in Kilograms     6000001043290001
--Height in cm            7000001043290001

--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-5)[Minus5Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-4)[Minus4Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,-3)[Minus3Z]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,0.4)[0.4th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,2) [2nd Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,3) [3rd Centile] --3;10;25;50;75;90;97
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,9) [9th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,10) [10th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,25) [25th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,75) [75th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,90) [90th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,91) [91th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,97) [97th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,98) [98th Centile]
--,dbo.ufn_GrowthChartGetYFromC(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,99.6) [99.6th Centile]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,3)[Plus3Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,4)[Plus4Z]
--,dbo.ufn_GrowthChartGetYFromZ(Case When @Sex=1 THEN [BMIALB] ELSE [BMIALG] END,Case When @Sex=1 THEN [BMIAMB] ELSE [BMIAMG] END,Case When @Sex=1 THEN [BMIASB] ELSE [BMIASG] END,5)[Plus5Z]
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartHCForAge]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

  
CREATE PROC [dbo].[usp_GrowthChartHCForAge] 
@ClientGUID numeric (16,0) = 9000223472020001
,@Sex Int = 2
,@WeeksOfGestation Float=Null
,@DaysOfGestation Float=Null
,@AgeMin FLOAT = NULL
,@AgeMax FLOAT = NULL

AS
DECLARE @DateOfBirth DateTime
SELECT @DateOfBirth = dbo.ufn_GrowthChartGetBirthDateFromEPR(@ClientGUID)
DECLARE @GestationAdjustmentYears Float
SELECT @GestationAdjustmentYears=[dbo].[ufn_GrowthChartAdjGestYears](@WeeksOfGestation,@DaysOfGestation)

DECLARE @AgeAsFractionOfYear Float
SELECT @AgeAsFractionOfYear=[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,GetDate(),@GestationAdjustmentYears)

DECLARE @CHARTTYPE INT
SELECT  @CHARTTYPE = CASE 
WHEN @DateOfBirth > '11 May 2009' THEN 2 
ELSE 1 
END

DECLARE @CHARTTYPEText Varchar (50)
SELECT  @CHARTTYPEText = CASE 
WHEN @DateOfBirth > '11 May 2009' THEN 'WHO-UK'
ELSE 'British 1990' 
END
DECLARE @WhichMeasurement VARCHAR(3)
SELECT @WhichMeasurement='HC'

SELECT
'Head Circumference (cm)' AS Title
,@CHARTTYPEText AS ChartTypeText
,[Years]
,NULL TextAge
,NULL TextAgeChronological
,NULL DateTimeOfObservation	
,NULL [HistorySeqNum]
,Case When @Sex=1 THEN [HCMB] ELSE [HCMG] END [Predicted]
,NULL Measured
,Case When @Sex=1 THEN [HCSB] ELSE [HCSG] END [CoefficentOfVariation]
,NULL [Z Score]
,Case When @Sex=1 THEN HCBMinus5Z ELSE HCGMinus5Z END [Minus5Z]
,Case When @Sex=1 THEN HCBMinus4Z ELSE HCGMinus4Z END [Minus4Z]
,Case When @Sex=1 THEN HCBMinus3Z ELSE HCGMinus3Z END [Minus3Z]
,Case When @Sex=1 THEN HCB04thCentile ELSE HCG04thCentile END [0.4th Centile]
,Case When @Sex=1 THEN HCB2ndCentile ELSE HCG2ndCentile END [2nd Centile]
,Case When @Sex=1 THEN HCB3rdCentile ELSE HCG3rdCentile END [3rd Centile] --3;10;25;50;75;90;97
,Case When @Sex=1 THEN HCB9thCentile ELSE HCG9thCentile END [9th Centile]
,Case When @Sex=1 THEN HCB10thCentile ELSE HCG10thCentile END [10th Centile]
,Case When @Sex=1 THEN HCB25thCentile ELSE HCG25thCentile END [25th Centile]
,Case When @Sex=1 THEN HCB75thCentile ELSE HCG75thCentile END [75th Centile]
,Case When @Sex=1 THEN HCB90thCentile ELSE HCG90thCentile END [90th Centile]
,Case When @Sex=1 THEN HCB91thCentile ELSE HCG91thCentile END [91th Centile]
,Case When @Sex=1 THEN HCB97thCentile ELSE HCG97thCentile END [97th Centile]
,Case When @Sex=1 THEN HCB98thCentile ELSE HCG98thCentile END [98th Centile]
,Case When @Sex=1 THEN HCB996thCentile ELSE HCG996thCentile END [99.6th Centile]
,Case When @Sex=1 THEN HCBPlus3Z ELSE HCGPlus3Z END [Plus3Z]
,Case When @Sex=1 THEN HCBPlus4Z ELSE HCGPlus4Z END [Plus4Z]
,Case When @Sex=1 THEN HCBPlus5Z ELSE HCGPlus5Z END [Plus5Z]
,NULL AS Centile
,@WeeksOfGestation [WeeksOfGestation]
,NULL [PatientAge]
FROM [Medinet].dbo.tbl_GrowthCharts
WHERE 
(@WeeksOfGestation IS NULL AND ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
OR (@WeeksOfGestation IS NOT NULL 
AND ((ChartType=@ChartType AND Years>=ISNULL(@AgeMin,0) AND Years<=ISNULL(@AgeMax,30)) 
or (ChartType=3 AND (@AgeMin is NULL AND Years<0))
))
UNION
SELECT 
'Head Circumference (cm)' AS Title
,@CHARTTYPEText AS ChartTypeText
,dbo.ufn_GrowthChart2dp([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears)) --Years
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears))
,dbo.[ufn_GrowthChartAgeYMDFromAgeInYears]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,0))
,O.RecordedDtm
,O.[HistorySeqNum]
,NULL--[dbo].[ufn_GrowthChartHCPredicted]([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,@CHARTTYPE,@GestationAdjustmentYears)
,ValueNum [Measured]
,NULL--[CoefficentOfVariation]
,dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,ValueNum
) [ZScore]
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,dbo.[ufn_GrowthChartGetCFromZText](dbo.ufn_GrowthChartZScore(
 dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'L')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'M')
,dbo.ufn_GrowthChartCubicInterpollation([dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears),@Sex,CASE WHEN [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) > (2*7)/365.25 THEN @ChartType ELSE 3 END,@WhichMeasurement,'S')
,ValueNum
)
) AS CENTILE
,@WeeksOfGestation [WeeksOfGestation]
,[dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) 

FROM EPRLive.[dbo].[CV3Observation] O
join EPRLive.dbo.CV3Client C
ON O.ClientGUID=C.GUID
WHERE 
O.ObsItemGUID = 1000001348290001 --Head Circumference SELECT GUID, [Name] FROM [EPRLive].[dbo].[CV3ObsCatalogItem] where Name Like '%Head%'
AND O.ClientGUID=@ClientGUID--@ClientGUID
AND [dbo].[ufn_GrowthChartAgeAsFractionOfYear](@DateOfBirth,O.RecordedDtm,@GestationAdjustmentYears) BETWEEN ISNULL(@AgeMin,-1) AND ISNULL(@AgeMax,30)
AND O.Active=1 AND O.StatusType=1
ORDER BY 1,2,3,4 DESC

--CCV3Client.GUID = 3000204228020001 
--DisplayName             ObsItemGUID
--Head Circumference      2000001279290001
--Length/Height           3000001279290001
--Weight in Kilograms     6000001043290001
--Height in cm            7000001043290001
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartSetWeeksOfGestation]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_GrowthChartSetWeeksOfGestation]
@ClientGUID numeric (16,0) =NULL,
@WeeksOfGestation [float] =NULL,
@DaysOfGestation [float] =NULL,
@MaternalHeight [float] =NULL,
@PaternalHeight [float] =NULL
AS
IF ISNULL(@WeeksOfGestation,40)!=ISNULL((Select WeeksOfGestation FROM dbo.[tbl_GrowthChartWeeksOfGestation] where ClientGUID=@ClientGUID),40)
BEGIN
UPDATE dbo.[tbl_GrowthChartWeeksOfGestation] 
SET WeeksOfGestation=@WeeksOfGestation,
DaysOfGestation=@DaysOfGestation 
WHERE ClientGUID=@ClientGUID
END
IF @MaternalHeight IS NOT NULL OR @PaternalHeight IS NOT NULL 
BEGIN
UPDATE dbo.[tbl_GrowthChartWeeksOfGestation] 
SET MaternalHeight=@MaternalHeight,
PaternalHeight=@PaternalHeight 
WHERE ClientGUID=@ClientGUID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GrowthChartGetWeeksOfGestation]    Script Date: 08/15/2014 11:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE [Medinet]
--GO
--/****** Object:  StoredProcedure [dbo].[usp_GrowthChartGetWeeksOfGestation]    Script Date: 09/07/2011 09:59:03 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO

----SET QUOTED_IDENTIFIER ON
----GO

----ALTER TABLE dbo.[tbl_GrowthChartWeeksOfGestation](
----	[GUID] [bigint] IDENTITY(1,1) NOT NULL,
----	[ClientGuid] [numeric (16,0)] NULL,
----	[WeeksOfGestation] [float] NULL
----) ON [PRIMARY]

----GO

CREATE Proc [dbo].[usp_GrowthChartGetWeeksOfGestation] 
@ClientGUID numeric (16,0) =1000203995020001
AS
IF NOT Exists(SELECT WeeksOfGestation FROM dbo.[tbl_GrowthChartWeeksOfGestation] where ClientGUID=@ClientGUID) 
BEGIN
INSERT INTO dbo.tbl_GrowthChartWeeksOfGestation (ClientGUID,WeeksOfGestation,DaysOfGestation)
VALUES (@ClientGUID,NULL,NULL)
END

(SELECT WeeksOfGestation, DaysOfGestation, MaternalHeight, PaternalHeight  FROM dbo.[tbl_GrowthChartWeeksOfGestation] where ClientGUID=@ClientGUID )
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GrowthChartGetYFromC]    Script Date: 08/15/2014 11:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_GrowthChartGetYFromC]
(@L Float --The trouble is we do not know @L and @M and @S these values - we only know @Y the measurement for the patient and [Years]
,@M Float
,@S Float
,@C Float)
RETURNS Float
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Y Float
	DECLARE @Z Float
	SELECT @Z=dbo.ufn_GrowthChartGetZFromC(@C) --it will be wrongly plotted if Z is innacurate 
	-- Add the T-SQL statements to compute the return value here
	SELECT @Y=CASE WHEN @L=0 THEN
		--WHEN L=0
		--Z=LOG(Y/M)/S
		--Z=(LOG(Y)-LOG(M))/S
		--Z*S=LOG(Y)-LOG(M)
		--(Z*S)+LOG(M)=LOG(Y)
		EXP((@S*@Z)+LOG(@M))  
		ELSE
		--Z=(POWER((Y/M),L)-1)/(L*S)
		--Z*L*S=(POWER((Y/M),L)-1)
		--(Z*L*S)+1=(POWER((Y/M),L)
		--dbo.ufn_GrowthChartNthRoot((Z*L*S)+1,L)=Y/M
		@M*(dbo.ufn_GrowthChartNthRoot((@Z*@L*@S)+1,@L))
		END
		-- Return the result of the function
	--RETURN round(@Y,2)
	RETURN @Y
END
GO
/****** Object:  Default [DF_tbl_GrowthChartUseAudit_AccessDate]    Script Date: 08/15/2014 11:28:56 ******/
ALTER TABLE [dbo].[tbl_GrowthChartUseAudit] ADD  CONSTRAINT [DF_tbl_GrowthChartUseAudit_AccessDate]  DEFAULT (getdate()) FOR [AccessDate]
GO
