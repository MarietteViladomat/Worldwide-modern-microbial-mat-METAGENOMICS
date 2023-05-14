library(MicrobiomeAnalystR)

#Taxonomy

mbSet<-Init.mbSetObj()
mbSet<-SetModuleType(mbSet, "mdp")
mbSet<-suppressWarnings(ReadSampleTable(mbSet, "metadata_FINAL.csv"));
mbSet<-Read16SAbundData(mbSet, "refseq_genus_todo_FINAL.csv","text","Others/Not_specific","T");
mbSet<-SanityCheckData(mbSet, "text");
mbSet<-SanityCheckSampleData(mbSet);
mbSet<-SetMetaAttributes(mbSet, "1")
mbSet<-PlotLibSizeView(mbSet, "norm_libsizes_0","png");
mbSet<-CreatePhyloseqObj(mbSet, "text","Others/Not_specific","T")
mbSet<-ApplyAbundanceFilter(mbSet, "prevalence", 4, 0.2);
mbSet<-ApplyVarianceFilter(mbSet, "iqr", 0.1);
smpl.nm.vec <- c("JM29.R1","JM4.R1","JM23.R1","JM26.R1","JM30.R1","JM8.R1","JM6.R1","JM5.R1","JM15.R1","JM31.R1","M3_1","M6_2","M2_1","M8_2","M1_2","M4_1","M7_2","M1_1","M7_1","M6_1","M4__2","M5_1","M5_2","M8_1","M3_2","M2_2","M9_2","DEVA_BWPP7_M","DEVA_BWPP7_G","DEVA_BWPP7_H","DEVA_BWPP7_L","DEVA_BWPP7_I","DEVA_BWPP7_N","ADM1_R1_q25","ADM2_R1_q25","GB14.Cone.Pool.Mat","GB14.Orange.Biofilm.Below.Weir","GB14.Black.Soil.Upstream.of.Weir","LHC14.Cone.Pool.Cones","G5090","G5088","G5089","KOW_3","KOW_0","Zloty_Stok_ZS_2","KOW_2","Zloty_Stok_ZS_3","SSD10_S12_L002_R1_001","SSD4_S18_L001_R1_001","SSD7_S5_L001_R1_001","SSD4_S18_L002_R1_001","SSD9_S9_L002_R1_001","SSD8_S7_L003_R1_001","SSD3_S16_L003_R1_001","SD3_S15_L001_R1_001","SD6_S2_L001_R1_001","SSD6_S3_L003_R1_001","SSD10_S12_L003_R1_001","SD6_S2_L002_R1_001","SD10_S10_L001_R1_001","SSD8_S7_L004_R1_001","SD7_S4_L001_R1_001")
mbSet<-UpdateSampleItems(mbSet);
mbSet<-ApplyAbundanceFilter(mbSet, "prevalence", 4, 0.2);
mbSet<-ApplyVarianceFilter(mbSet, "iqr", 0.1);
mbSet<-PerformNormalization(mbSet, "none", "colsum", "none");

#Stacked Bar Plot
mbSet<-PlotTaxaAundanceBar(mbSet, "taxa_alpha_1","Phylum","Site", "none", "barnorm",10, "set3","sum",40, "top", "F", "png");
  
#Alpha div Shannon
mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_1","Shannon","Site","OTU", "default", "png");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_1","Shannon","Site","default", "png");
mbSet<-PerformAlphaDiversityComp(mbSet, "nonpar","Site");

#Beta div NMDS
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_2","NMDS","bray","expfac","Site","none","OTU","","Shannon", "no", "png", 72);
mbSet<-PerformCategoryComp(mbSet, "OTU", "anosim","bray","Site");

#LefSe
mbSet<-suppressWarnings(PerformLefseAnal(mbSet, 0.01, "fdr", 2.0, "Site","F","NA","OTU"))
mbSet<-PlotLEfSeSummary(mbSet, 40, "bar", "bar_graph_1","png", dpi =300);


#Function

mbSet2<-Init.mbSetObj()
mbSet2<-SetModuleType(mbSet2, "mdp")
mbSet2<-ReadSampleTable(mbSet2, "metadata_FINAL.csv");
mbSet2<-Read16SAbundData(mbSet2, "KO_level3_todo_formatted.csv","text","Others/Not_specific","T");
mbSet2<-SanityCheckData(mbSet2, "text");
mbSet2<-SanityCheckSampleData(mbSet2);
mbSet2<-SetMetaAttributes(mbSet2, "1")
mbSet2<-PlotLibSizeView(mbSet2, "norm_libsizes_0","png");
mbSet2<-CreatePhyloseqObj(mbSet2, "text","Others/Not_specific","T")
mbSet2<-ApplyAbundanceFilter(mbSet2, "prevalence", 4, 0.2);
mbSet2<-ApplyVarianceFilter(mbSet2, "iqr", 0.1);
mbSet2<-PerformNormalization(mbSet2, "none", "none", "TMM");
smpl.nm.vec <- c("SSD4_S18_L001_R1_001","M1_2","DEVA_BWPP7_M","SSD7_S5_L001_R1_001","M9_2","G5088","SSD8_S7_L003_R1_001","LHC14.Cone.Pool.Cones","Zloty_Stok_ZS_2","Zloty_Stok_ZS_3","SD6_S2_L002_R1_001","JM5.R1","SSD4_S18_L002_R1_001","SSD8_S7_L004_R1_001","SSD10_S12_L002_R1_001","M8_1","SD7_S4_L001_R1_001","JM6.R1","DEVA_BWPP7_G","M8_2","M4_1","JM23.R1","M6_1","M7_1","SD3_S15_L001_R1_001","G5089","M5_2","SSD6_S3_L003_R1_001","G5090","JM29.R1","KOW_3","SD6_S2_L001_R1_001","GB14.Black.Soil.Upstream.of.Weir","ADM1_R1_q25","KOW_2","DEVA_BWPP7_L","M2_2","GB14.Orange.Biofilm.Below.Weir","SSD9_S9_L002_R1_001","SSD3_S16_L003_R1_001","JM30.R1","DEVA_BWPP7_N","M4__2","SD10_S10_L001_R1_001","M2_1","M5_1","JM26.R1","DEVA_BWPP7_H","GB14.Cone.Pool.Mat","JM4.R1","M1_1","KOW_0","JM31.R1","M6_2","SSD10_S12_L003_R1_001","ADM2_R1_q25","M7_2","JM15.R1","M3_1","JM8.R1","DEVA_BWPP7_I","M3_2")

#Alpha div Shannon
mbSet2<-PlotAlphaData(mbSet2, "filt","alpha_diver_1_func","Shannon","Site","OTU", "default", "png");
mbSet2<-PlotAlphaBoxData(mbSet2, "alpha_diverbox_1_func","Shannon","Site","default", "png");
mbSet2<-PerformAlphaDiversityComp(mbSet2, "nonpar","Site");

#Beta div NMDS
mbSet2<-PlotBetaDiversity(mbSet2, "beta_diver_2_func","NMDS","bray","expfac","Site","none","OTU","","Shannon", "no", "png", 72);
mbSet2<-PerformCategoryComp(mbSet2, "OTU", "anosim","bray","Site");

#Stacked bar layers
mbSet2<-Init.mbSetObj()
mbSet2<-SetModuleType(mbSet2, "sdp")
mbSet2<-ReadSampleTable(mbSet2, "metadata_FINAL.csv");
mbSet2<-Read16SAbundData(mbSet2, "KO_level3_todo_formatted.csv","text","Others/Not_specific","T");
mbSet2<-SanityCheckData(mbSet2, "text");
mbSet2<-SanityCheckSampleData(mbSet2);
mbSet2<-SetMetaAttributes(mbSet2, "1")
mbSet2<-PlotLibSizeView(mbSet2, "norm_libsizes_0","png");
mbSet2<-CreatePhyloseqObj(mbSet2, "text","Others/Not_specific","T")
mbSet2<-ApplyAbundanceFilter(mbSet2, "prevalence", 4, 0.2);
mbSet2<-ApplyVarianceFilter(mbSet2, "iqr", 0.1);
mbSet2<-PerformNormalization(mbSet2, "none", "none", "TMM");
mbSet2<-PlotFunctionStack(mbSet2, "functional_plot_0_func","KEGG metabolism","hitabund","other","Site","set3", "png")

