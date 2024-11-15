library(dplyr)
library(Seurat)
library(patchwork)
#https://gitlab.com/rosen-lab/white-adipose-atlas.

a<- readRDS("human_all.rds")
scRNA_VAT=subset(a,depot=='VAT')
rm(a)
gc()

scRNA_VAT=subset(scRNA_VAT,bmi.range %in% c( "20-30","30-40"))
FeaturePlot(scRNA_VAT,features = 'EEPD1',split.by = 'bmi.range',label=T,cols = c("lightgrey","red"))

a<- readRDS("mouse_all.rds")
scRNA=subset(a,depot=='PG')
rm(a)
gc()
FeaturePlot(scRNA,features = 'Eepd1',split.by = 'diet',label=T,cols = c("lightgrey","red"))
