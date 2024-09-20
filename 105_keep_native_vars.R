# create list of native variables needed
BRFSSVarList <- c("MARITAL",
"ALCDAY4",
"MENTHLTH",
"X_AGE_G",
"SMOKE100",
"SMOKDAY2",
"SEXVAR",
"X_HISPANC",
"X_MRACE1",
"GENHLTH",
"X_HLTHPL1",
"EDUCA",
"INCOME3",
"X_BMI5CAT",
"EXERANY2")

BRFSS_b <- BRFSS_a[BRFSSVarList]

# check columns
colnames(BRFSS_b)

# check rows
nrow(BRFSS_b)