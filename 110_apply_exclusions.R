# subset dataset for only never married people
BRFSS_c <- subset(BRFSS_b, MARITAL==5)

BRFSS_c$MARITAL

nrow(BRFSS_c)

# only keep valid alcohol responses (exposure var)
BRFSS_d <- subset(BRFSS_c, ALCDAY4 < 777 | ALCDAY4 == 888)

BRFSS_d$ALCDAY4

nrow(BRFSS_d)

# only keep valid MENTHLTH responses (outcome var)
BRFSS_e <- subset(BRFSS_d, MENTHLTH < 77 | MENTHLTH == 88)
nrow(BRFSS_e)