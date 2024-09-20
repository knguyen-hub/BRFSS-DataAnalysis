# make copy of dataset
BRFSS_f <- BRFSS_e

# add grouping var set to 9 to dataset
BRFSS_f$ALCGRP <- 9

# update according to data dict
BRFSS_f$ALCGRP[BRFSS_f$ALCDAY4 < 200] <- 3
BRFSS_f$ALCGRP[BRFSS_f$ALCDAY4 >= 200 & BRFSS_f$ALCDAY4 < 777] <- 2
BRFSS_f$ALCGRP[BRFSS_f$ALCDAY4 == 888] <- 1

table(BRFSS_f$ALCGRP, BRFSS_f$ALCDAY4)

# add flags
BRFSS_f$DRKMONTHLY <- 0
BRFSS_f$DRKMONTHLY[BRFSS_f$ALCGRP == 2] <- 1

table(BRFSS_f$ALCGRP, BRFSS_f$DRKMONTHLY)

BRFSS_f$DRKWEEKLY <- 0
BRFSS_f$DRKWEEKLY[BRFSS_f$ALCGRP == 1] <- 1

table(BRFSS_f$ALCGRP, BRFSS_f$DRKWEEKLY)
