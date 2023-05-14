setwd("mantel/")

library(vegan)
library(geosphere)
library(ggplot2)

#---- TAX
man = read.csv("abundances_averages_tax.csv", header= TRUE, row.names = 1)
dim(man)

amb<-man[1:2]
geo<-man[3:4]
abund<-man[5:length(colnames(man))]


#abundance data frame - bray curtis dissimilarity
dist.abund = vegdist(abund, method = "bray")

#environmental vector - euclidean distance
dist.amb = dist(amb, method = "euclidean")

#geographic data frame - haversine distance 
d.geo = distm(geo, fun = distHaversine)
dist.geo = as.dist(d.geo)



#abundance vs environmental 
abund_amb = mantel(dist.abund, dist.amb, method = "spearman", permutations = 9999, na.rm = TRUE)
abund_amb

gg = as.vector(dist.abund)
aa = as.vector(dist.amb)
mat_euc_mediciones<-data.frame(aa,gg)

ggplot(mat_euc_mediciones, aes(y = aa, x = gg)) + 
  geom_point(size = 4, alpha = 0.75, colour = "black") + 
  geom_smooth(method = "lm", colour = "black", alpha = 0.2) + 
  labs(x = "Euclidean Distance (T+pH)", y = "Bray-Curtis Dissimilarity") + 
  theme( axis.text.x = element_text(face = "bold",colour = "black", size = 12), 
         axis.text.y = element_text(face = "bold", size = 11, colour = "black"), 
         axis.title= element_text(face = "bold", size = 14, colour = "black"), 
         panel.background = element_blank(), 
         panel.border = element_rect(fill = NA, colour = "black"),
         legend.position = "top",
         legend.text = element_text(size = 10, face = "bold"),
         legend.title = element_text(size = 11, face = "bold")) +
  scale_fill_continuous(high = "red4", low = "skyblue")#+ 



#abundance vs geographic 
abund_geo  = mantel(dist.abund, dist.geo, method = "spearman", permutations = 9999, na.rm = TRUE)
abund_geo

gg = as.vector(dist.abund)
aa = as.vector(dist.geo)
mat_euc_mediciones<-data.frame(aa,gg)

ggplot(mat_euc_mediciones, aes(y = aa, x = gg)) + 
  geom_point(size = 4, alpha = 0.75, colour = "black") + 
  geom_smooth(method = "lm", colour = "black", alpha = 0.2) + 
  labs(x = "Harvestine Distance", y = "Bray-Curtis Dissimilarity") + 
  theme( axis.text.x = element_text(face = "bold",colour = "black", size = 12), 
         axis.text.y = element_text(face = "bold", size = 11, colour = "black"), 
         axis.title= element_text(face = "bold", size = 14, colour = "black"), 
         panel.background = element_blank(), 
         panel.border = element_rect(fill = NA, colour = "black"),
         legend.position = "top",
         legend.text = element_text(size = 10, face = "bold"),
         legend.title = element_text(size = 11, face = "bold")) +
  scale_fill_continuous(high = "red4", low = "skyblue")#+ 

#---- FUNC

man = read.csv("abundances_averages_func.csv", header= TRUE, row.names = 1)
dim(man)

amb<-man[1:2]
geo<-man[3:4]
abund<-man[5:length(colnames(man))]


#abundance data frame - bray curtis dissimilarity
dist.abund = vegdist(abund, method = "bray")

#environmental vector - euclidean distance
dist.amb = dist(amb, method = "euclidean")

#geographic data frame - haversine distance 
d.geo = distm(geo, fun = distHaversine)
dist.geo = as.dist(d.geo)



#abundance vs environmental 
abund_amb = mantel(dist.abund, dist.amb, method = "spearman", permutations = 9999, na.rm = TRUE)
abund_amb

gg = as.vector(dist.abund)
aa = as.vector(dist.amb)
mat_euc_mediciones<-data.frame(aa,gg)

ggplot(mat_euc_mediciones, aes(y = aa, x = gg)) + 
  geom_point(size = 4, alpha = 0.75, colour = "black") + 
  geom_smooth(method = "lm", colour = "black", alpha = 0.2) + 
  labs(x = "Euclidean Distance (T+pH)", y = "Bray-Curtis Dissimilarity") + 
  theme( axis.text.x = element_text(face = "bold",colour = "black", size = 12), 
         axis.text.y = element_text(face = "bold", size = 11, colour = "black"), 
         axis.title= element_text(face = "bold", size = 14, colour = "black"), 
         panel.background = element_blank(), 
         panel.border = element_rect(fill = NA, colour = "black"),
         legend.position = "top",
         legend.text = element_text(size = 10, face = "bold"),
         legend.title = element_text(size = 11, face = "bold")) +
  scale_fill_continuous(high = "red4", low = "skyblue")#+ 



#abundance vs geographic 
abund_geo  = mantel(dist.abund, dist.geo, method = "spearman", permutations = 9999, na.rm = TRUE)
abund_geo

gg = as.vector(dist.abund)
aa = as.vector(dist.geo)
mat_euc_mediciones<-data.frame(aa,gg)

png("mantel_function_vs_geo.png", width = 8, height = 4, units = 'in', res = 300)

ggplot(mat_euc_mediciones, aes(y = aa, x = gg)) + 
  geom_point(size = 4, alpha = 0.75, colour = "black") + 
  geom_smooth(method = "lm", colour = "black", alpha = 0.2) + 
  labs(x = "Harvestine Distance", y = "Bray-Curtis Dissimilarity (functions)") + 
  theme( axis.text.x = element_text(face = "bold",colour = "black", size = 12), 
         axis.text.y = element_text(face = "bold", size = 11, colour = "black"), 
         axis.title= element_text(face = "bold", size = 14, colour = "black"), 
         panel.background = element_blank(), 
         panel.border = element_rect(fill = NA, colour = "black"),
         legend.position = "top",
         legend.text = element_text(size = 10, face = "bold"),
         legend.title = element_text(size = 11, face = "bold")) +
  scale_fill_continuous(high = "red4", low = "skyblue")#+ 

dev.off()
