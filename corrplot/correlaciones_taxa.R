
library(vegan)
library(reshape2)
library(ggplot2)
library(corrplot)

genus<-read.csv("refseq_genus_todo_FINAL_NORMALIZED_transposed_100.csv", sep =",", header = T, row.names= 1);head(genus);dim(genus)
genus<-genus[, colSums(genus != 0) > 0]

genus<-decostand(genus,"total"); tail(genus)

cc<-cor(genus, method = "spearman")
cc_df = as.data.frame(cc)
cc_df$generos = row.names(cc_df)
ccm = melt(cc_df, id = "generos")
ccm$generos <- factor(ccm$generos,levels=unique(ccm$generos))

col2 <- colorRampPalette(c("#053061", "#2166AC", "#4393C3", "#92C5DE",
                           "#D1E5F0", "#FFFFFF", "#FDDBC7", "#F4A582",
                           "#D6604D", "#B2182B", "#67001F"))

corrplot(cc, tl.col = "black", method="square", order = "hclust", hclust.method = "average",
         tl.cex = .3, rect.lwd=4, col=col2(200))

png(filename = "corrplot_refseq.png", width = 25, height = 25, units = "cm", res = 400)
corrplot(cc, tl.col = "black", method ="square", order = "hclust", hclust.method = "average", 
         tl.cex = 0.2, rect.lwd=4, col=col2(200))
dev.off()


func<-read.csv("KO_level3_todo_formatted_NORMALIZED_transposed_100.csv", sep =",", header = T, row.names= 1);head(func);dim(func)
func<-func[, colSums(func != 0) > 0]

func<-decostand(func,"total"); tail(func)

cc<-cor(func, method = "spearman")
cc_df = as.data.frame(cc)
cc_df$func = row.names(cc_df)

ccm = melt(cc_df, id = "func")
ccm$func <- factor(ccm$func,levels=unique(ccm$func))

col2 <- colorRampPalette(c("#053061", "#2166AC", "#4393C3", "#92C5DE",
                           "#D1E5F0", "#FFFFFF", "#FDDBC7", "#F4A582",
                           "#D6604D", "#B2182B", "#67001F"))

corrplot(cc, tl.col = "black", method="square", order = "FPC", hclust.method = "average",
         tl.cex = .3, addrect = 6, rect.lwd=4, col=col2(200))

png(filename = "corrplot_KO.png", width = 25, height = 25, units = "cm", res = 400)
corrplot(cc, tl.col = "black", method ="square", order = "FPC", hclust.method = "average", 
         tl.cex = 0.4, rect.lwd=4, col=col2(200))
dev.off()
