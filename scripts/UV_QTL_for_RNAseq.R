# first written by Marc Brock and modified by Cody Markelz
# UV patterning QTL
# 
setwd("/Users/Cody_2/git.repos/brassica_UV/data")

library(qtl)
library(snow)
load(file="Brapa10.stepwise.hk.pairs.3.RData")
load(file="Brapa10.stepwise.hk.pairs.4.RData")
load(file="Brapa10.stepwise.hk.pairs.5.RData")


plotLodProfile(Brapa10.stepwise.hk.pairs3)
plotLodProfile(Brapa10.stepwise.hk.pairs4)
plotLodProfile(Brapa10.stepwise.hk.pairs5)

#bt_UV_blade
Brapa10.stepwise.hk.pairs3
QTL.7.3 <- lodint(Brapa10.stepwise.hk.pairs3, drop=2, qtl.index=5,
                   expandtomarkers= T)
QTL.8.2 <- lodint(Brapa10.stepwise.hk.pairs3, drop=2, qtl.index=6,
                   expandtomarkers= T)
QTL.7.3 
#              chr      pos      lod
# A07x19348283 A07 64.30808 6.919690
# A07x19521092 A07 65.12285 9.415914
# A07x20152281 A07 67.16263 7.023449

QTL.8.2
#              chr      pos      lod
# A08x20128470 A08 73.08586 4.377882
# cA08.loc77   A08 77.00000 6.608733
# A08x20766708 A08 80.61716 4.991970


#bt_L_UV_blade
#NOTE THIS TRAIT PRODUCED WIDER 2LOD SUPPORT LIMITS THAN THE OTHERS
# TWO UV TRAITS. LETS FOCUS ON THE OTHER PROFILES
#Brapa10.stepwise.hk.pairs4
#lodint(Brapa10.stepwise.hk.pairs4, drop=2, qtl.index=2, expandtomarkers= T)
#lodint(Brapa10.stepwise.hk.pairs4, drop=2, qtl.index=3, expandtomarkers= T)

#bt_W_UV_blade
Brapa10.stepwise.hk.pairs5
#THIS IS A BIT WIDER 2LOD REGION AND MIGHT BE USEFUL TO EXPLORE IF THE REGION
# IDENTIFIED ABOVE AS QTL7.3 DOESN'T PRODUCE INTERESTING CANDIDATES
QTL.7.3.wider.LOD <- lodint(Brapa10.stepwise.hk.pairs5, drop=2, qtl.index=5,
                              expandtomarkers= T)
QTL.7.3.wider.LOD
#              chr      pos      lod
# A07x18905857 A07 63.49163 4.694500
# A07x19521092 A07 65.12285 7.008322
# A07x20306343 A07 68.38861 4.493748


#THIS REGION WAS IDENTICAL TO THAT ABOVE FOR BT_UV_BLADE
#lodint(Brapa10.stepwise.hk.pairs5, drop=2, qtl.index=6, expandtomarkers= T)






