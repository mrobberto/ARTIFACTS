# ARTIFACTS
tool to predict NIRCam Claws
 
version Oct. 4, 2022

here are two relevant routines in this delivery
1) driver.py
finds the possible offending sources K<1.5 for a given radec. After dowloanding the repository with the original folder ARTIFACTS, the user must preliminary export the APT file to be checked, say proposal 1288, in the ARTIFACTS/APT_pointing_files directory as APT1258.pointing. The results are saved in the directory ARTIFACTS/plots as jpg files, one for each offending star.
2) driver_v1.py makes a step forward, printing the V3 position angles available at the date of the observation. The dates are typically constrained in the APT files as Special Requirements. However, the .pointing filet does not contain the dates, so one has to export ALSO the .sql format, in the same ARTIFACTS/APT_pointing_files folder. The routine then looks at the dates and plots the relative V3POS angle, also in the ARTIFACTS/plots folder.
One can therefore check the V3POS angle against the angles interested by (possible) Claw-ers, and decide consequently what to do with the information.

I verified that the routines run with the mirage_env conda environemtn. Therefore, once the ARTIFACTS folder has been created on your disk, do
>conda activate mirage_env # this is how I start the mirage env.
>cd ARTIFACTS
>python driver 1288
or
>python driver_v1 2756

==OLDER======
version Oct. 1, 2022

from the terminal, run
> cd .../ARTIFACTS
> python driver.py 2756
where 2756 is the proposal number. 
The APT file is in the local ARTIFACTS/APT_pointing_files folder, exported as APT2756.pointing from APT

