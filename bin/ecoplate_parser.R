# This script parses EcoPlate data from the plate reader (in .txt format) into a .txt 
# for future analyses. Filenames will have '_parsed' appended to them.

# Load required packages and set working directory.
rm(list=ls())
setwd("~/GitHub/SSRP_2015/")

filepath <- "./data/0723_3C_07122015_RNF.txt"

plate <- read.table(filepath, sep='\t', skip=96, blank.lines.skip=TRUE)
plate <- plate[,2:13]

write.table(plate, file=sub(pattern='.txt', replacement='_parsed.txt', x=filepath),
            row.names=FALSE, col.names=FALSE, sep='\t')