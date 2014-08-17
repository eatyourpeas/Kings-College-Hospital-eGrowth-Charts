Kings-College-Hospital-eGrowth-Charts
=====================================

Plot children's growth data against national UK90 and UK-WHO standards and report standard deviation scores and centiles.

The software contains T-SQL database tables and methods. It contains the UK90 and UK-WHO growth standards for children (height, weight, BMI and head circumference). These data and the LMS method on which they are based are subject to licence by the MRC and this can be obtained from the MRC.

It calculates a corrected decimal age from a date of birth, measurement date and gestational age (based on RCPCH standards) and uses this to generate L, M and S values by interpolation from reference data. These are converted to SDS and centiles.
Values are reported to Microsoft Report Builder generated .rdl charts.

Dr Jack Barker

Dr Simon Chapman
