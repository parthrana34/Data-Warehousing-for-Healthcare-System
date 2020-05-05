/*** Pre-processing ***/

/*** Updating Zip Code in all the tables ***/

use project

Select distinct State from Stag_HHA_2015 where len( [Zip Code]) < 5
Select distinct State from Stag_HHA_2016 where len( [Zip Code]) < 5
Select distinct State from Stag_HOS_2015 where len( [Zip Code]) < 5
Select distinct State from Stag_HOS_2016 where len( [Zip Code]) < 5
Select distinct State from Stag_Nurse_2015 where len( [Zip Code]) < 5
Select distinct State from Stag_Nurse_2016 where len( [Zip Code]) < 5
Select distinct [Provider State] from Stag_Imp_2015 where len( [Provider Zip Code] ) < 5
Select distinct [Provider State] from Stag_Imp_2016 where len( [Provider Zip Code]) < 5
Select distinct [Provider State] from Stag_Out_2015 where len( [Provider Zip Code]) < 5
Select distinct [Provider State] from Stag_Out_2016 where len( [Provider Zip Code]) < 5

Update Stag_HHA_2015 Set [Zip Code] = CONCAT('00', [Zip Code]) where len([Zip Code]) < 4
Update Stag_HHA_2015 Set [Zip Code] = CONCAT('0', [Zip Code]) where len([Zip Code]) < 5
Update Stag_HHA_2015 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_HHA_2016 Set [Zip Code] = CONCAT('00', [Zip Code]) where len([Zip Code]) < 4
Update Stag_HHA_2016 Set [Zip Code] = CONCAT('0', [Zip Code]) where len([Zip Code]) < 5
Update Stag_HHA_2016 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_HOS_2015 Set [Zip Code] = CONCAT('00', [Zip Code]) where len([Zip Code]) < 4
Update Stag_HOS_2015 Set [Zip Code] = CONCAT('0', [Zip Code]) where len([Zip Code]) < 5
Update Stag_HOS_2015 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_HOS_2016 Set [Zip Code] = CONCAT('00', [Zip Code]) where len([Zip Code]) < 4
Update Stag_HOS_2016 Set [Zip Code] = CONCAT('0', [Zip Code]) where len([Zip Code]) < 5
Update Stag_HOS_2016 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_Nurse_2015 Set [Zip Code] = CONCAT('00', [Zip Code]) where len([Zip Code]) < 4
Update Stag_Nurse_2015 Set [Zip Code] = CONCAT('0', [Zip Code]) where len([Zip Code]) < 5
Update Stag_Nurse_2015 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_Nurse_2016 Set [Zip Code] = CONCAT('00', [Zip Code]) where len([Zip Code]) < 4
Update Stag_Nurse_2016 Set [Zip Code] = CONCAT('0', [Zip Code]) where len([Zip Code]) < 5
Update Stag_Nurse_2016 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_Imp_2015 Set [Provider Zip Code] = CONCAT('00', [Provider Zip Code]) where len([Provider Zip Code]) < 4
Update Stag_Imp_2015 Set [Provider Zip Code] = CONCAT('0', [Provider Zip Code]) where len([Provider Zip Code]) < 5
Update Stag_Imp_2015 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_Imp_2016 Set [Provider Zip Code] = CONCAT('00', [Provider Zip Code]) where len([Provider Zip Code]) < 4
Update Stag_Imp_2016 Set [Provider Zip Code] = CONCAT('0', [Provider Zip Code]) where len([Provider Zip Code]) < 5
Update Stag_Imp_2016 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_Out_2015 Set [Provider Zip Code] = CONCAT('00', [Provider Zip Code]) where len([Provider Zip Code]) < 4
Update Stag_Out_2015 Set [Provider Zip Code] = CONCAT('0', [Provider Zip Code]) where len([Provider Zip Code]) < 5
Update Stag_Out_2015 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6

Update Stag_Out_2016 Set [Provider Zip Code] = CONCAT('00', [Provider Zip Code]) where len([Provider Zip Code]) < 4
Update Stag_Out_2016 Set [Provider Zip Code] = CONCAT('0', [Provider Zip Code]) where len([Provider Zip Code]) < 5
Update Stag_Out_2016 Set [Provider ID] = CONCAT('0', [Provider ID]) where len([Provider ID]) < 6
