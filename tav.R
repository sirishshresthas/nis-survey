library(haven)

read_dta("Desktop/Coviwyck/TAVR.dta")

tavr <- read_dta("Desktop/Coviwyck/TAVR.dta")

names(tavr)

attach(tavr)
tavr[1:10,]

xvars4 <- c("AGE", "AGE_NEONATE", "AMONTH", "AWEEKEND", "DIED", "DISCWT", "DISPUNIFORM", "DQTR", "DRG", "DRGVER", "FEMALE", "ELECTIVE", "cad", "copd", "obesity", "ckd", "esrd", "anemia", "priorcabg", "MS")

catvars <- c("cad", "copd", "obesity", "ckd", "esrd", "anemia", "priorcabg", "MS")

library(tableone)

tavrdummy <- CreateTableOne(vars = xvars4, data = tavr, strata = "MS", factorVars = catvars)
print(tavrdummy, smd = T, quote = TRUE, noSpaces = TRUE) 

