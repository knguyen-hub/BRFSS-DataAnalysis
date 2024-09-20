# copy of dataset
BRFSS_g <- BRFSS_f

# make mental health var
BRFSS_g$MENTHLTH2 <- BRFSS_g$MENTHLTH

# all entries that MENTHLTH == 88 make 0
BRFSS_g$MENTHLTH2[BRFSS_g$MENTHLTH == 88] <- 0

table(BRFSS_g$MENTHLTH, BRFSS_g$MENTHLTH2)