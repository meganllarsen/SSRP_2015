# This script generates a matrix of resources. 

setwd("~/GitHub/SSRP_2015/")

resource.list <- c("Water", "Pyruvic.Acid.Methyl.Ester", "Tween.40", 
                   "Tween.80", "alpha-Cyclodextrin", "Glycogen", 
                   "D-Cellulobiose", "alpha-D-Lactose", "beta-Methyl-D-Glucoside",
                   "D-Xylose", "i-Erythritol", "D-Mannitol", "N-Acetyl-D-Glucosamine",
                   "D-Glucosaminic.Acid", "Glucose-1-Phosphate",
                   "D,L-alpha-Glycerol.Phosphate", "D-Galactonic.Acid.gamma-Lactone", 
                   "D-Galacturonic.Acid", "2-Hydroxy.Benzoic.Acid",
                   "4-Hydroxy.Benzoic.Acid", "gamma-Hydroxybutyric.Acid", 
                   "Itaconic.Acid", "alpha-Ketobutyric.Acid", "D-Malic.Acid", 
                   "L-Arginine", "L-Asparagine", "L-Phenylalanine", "L-Serine",
                   "L-Threonine", "Glycyl-L-Glutamic.Acid", "Phenylethylamine",
                   "Putrescine")

resource.matrix <- matrix(data = rep(resource.list, 3), ncol = 12, nrow = 8)

write.table(resource.matrix, "./ecoplate.info/resource_matrix.txt", sep='\t',
            row.names=F, col.names=F)