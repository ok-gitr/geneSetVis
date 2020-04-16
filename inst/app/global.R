
library(dplyr)
library(rmdformats)
library(enrichR)

source(system.file('app/uiElements.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/helpers.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/stringdb.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/msigdb.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/reactome.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/david.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/dose.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/ncg.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/dgn.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/modules/enrichr.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/tabs.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/ui.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)
source(system.file('app/server.R', package = 'geneSetVis', mustWork = TRUE), local = TRUE)


demo1 <- "HMOX1	1.0596510 \nRNF167	0.9790608 \nHSPA5	0.7293491 \nCDKN1A	0.7265868 \nFCGR2B	0.6369659 \nPFN1	0.5453499 \nLAPTM5	0.5164539 \nAHNAK	0.5045917 \nFN1	0.4090008 \nS100A10	0.3566574 \nVIM	0.3409602 \nYWHAZ	0.2911121 \nFTH1.1	0.2733286 \nPDIA3	0.2555106 \nATP5MPL	-0.2565952 \nLAMTOR4	-0.2574608 \nSMDT1	-0.2589715 \nCOX5A	-0.2610802 \nMTDH	-0.2619066 \nNDUFA2	-0.2638782 \nCOX6C	-0.2679750 \nCOX8A	-0.2756591 \nNDUFA1	-0.2781574 \nH2AFJ	-0.2827520 \nTOMM7	-0.2955068 \nRPL23	-0.3009606 \nCOX7C	-0.3324625 \nCASP1	-0.3531754 \nRPS21	-0.3921719 \nRPL38	-0.3928734 \nFOS	-0.8496947 \nIGFBP1	-2.2179911 \nPPT1	0.2956121 \nHEXB	0.2665466 \nNINJ1	0.3056079 \nFGL2	0.2589270 \nLDHA	0.2736736 \nCD59	-0.3042252 \nGSN	0.2728750 \nANXA2	0.2990603 \nLGALS3	0.2911058 \nSLC2A3	0.4835044 \nMT-CO2	-0.3797473 \nPLIN2	0.2974303 \nPLAUR	0.2979632 \nPPP1R15A	0.3040476"
demo2 <- "HMOX1, RNF167, HSPA5, CDKN1A, FCGR2B, PFN1, LAPTM5, AHNAK, FN1, S100A10, VIM, YWHAZ, FTH1.1, PDIA3, ATP5MPL, LAMTOR4, SMDT1, COX5A, MTDH, NDUFA2, COX6C, COX8A, NDUFA1, H2AFJ, TOMM7, RPL23, COX7C, CASP1, RPS21, RPL38, FOS, IGFBP1, PPT1, HEXB, NINJ1, FGL2, LDHA, CD59, GSN, ANXA2, LGALS3	, SLC2A3, MT-CO2, PLIN2, PLAUR, PPP1R15A"
