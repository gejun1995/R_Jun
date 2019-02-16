
# Venn
library(VennDiagram)

anotated_gene <- read.table("anotated_gene.csv", header = TRUE, sep=",")
uniport <- anotated_gene[,1]
nt <- anotated_gene[,2]
pfam <- anotated_gene[,3]

venn.diagram(list(uniport=uniport,nt=nt,pfam=pfam), "anotation_venn_plot.png", height = 1000, width = 1000, resolution =300, imagetype="png", fill = c("cornflowerblue", "darkorchid1","green"),alpha = 0.5, fontfamily = "serif", fontface = "bold")


# Venn_DE
library(VennDiagram)
DE_anotated_gene <- read.table("selected_DE_annoted.csv", header = TRUE, sep=",")
DE_anotated_gene
nt <- DE_anotated_gene[,1]
uniport <- DE_anotated_gene[,2]
venn.diagram(list(uniport=uniport,nt=nt), "DE_anotation_venn_plot.png", height = 900, width = 900, resolution =300, imagetype="png", fill = c("cornflowerblue", "darkorchid1"),alpha = 0.5, fontfamily = "serif", fontface = "bold")



# Venn_DE_UP
library(VennDiagram)
DE_anotated_gene <- read.table("selected_DE_UP.csv", header = TRUE, sep=",")
DE_anotated_gene
nt <- DE_anotated_gene[,1]
uniport <- DE_anotated_gene[,2]
venn.diagram(list(uniport=uniport,nt=nt), "DE_anotation_venn_plot.png", height = 900, width = 900, resolution =300, imagetype="png", fill = c("cornflowerblue", "darkorchid1"),alpha = 0.5, fontfamily = "serif", fontface = "bold")

# Venn_DE_DOWN
library(VennDiagram)
DE_anotated_gene <- read.table("selected_DE_down.csv", header = TRUE, sep=",")
DE_anotated_gene
nt <- DE_anotated_gene[,1]
uniport <- DE_anotated_gene[,2]
venn.diagram(list(uniport=uniport,nt=nt), "DE_anotation_venn_plot.png", height = 900, width = 900, resolution =300, imagetype="png", fill = c("cornflowerblue", "darkorchid1"),alpha = 0.5, fontfamily = "serif", fontface = "bold")



# totaol
library(ggplot2)

database <- factor(c('total','uniport','nt', "pfam"),levels=c('total','uniport','nt', "pfam"))
counts <- c(284790, 32786, 118496, 187285)
df <- data.frame(database, counts)
df 
ggplot(df, aes(x=database, y=counts, fill=database)) + 
  geom_bar(stat="identity") +
  geom_text(aes(label=counts))


# DE
library(ggplot2)

database <- factor(c('total','uniport','nt'),levels=c('total','uniport','nt'))
counts <- c(7111, 922,3417)
df <- data.frame(database, counts)
df 
ggplot(df, aes(x=database, y=counts, fill=database)) + 
  geom_bar(stat="identity") +
  geom_text(aes(label=counts))


# DE_UP
library(ggplot2)

database <- factor(c('total','uniport','nt'),levels=c('total','uniport','nt'))
counts <- c(5426,2591,693)
df <- data.frame(database, counts)
df 
ggplot(df, aes(x=database, y=counts, fill=database)) + 
  geom_bar(stat="identity") +
  geom_text(aes(label=counts))

# DE_DOWN
library(ggplot2)

database <- factor(c('total','uniport','nt'),levels=c('total','uniport','nt'))
counts <- c(1685,826,229)
df <- data.frame(database, counts)
df 
ggplot(df, aes(x=database, y=counts, fill=database)) + 
  geom_bar(stat="identity") +
  geom_text(aes(label=counts))


library(VennDiagram)

anotated_gene <- read.table("Annotation_Summary_2.xls.csv", header = TRUE, sep=",")
Nr <- anotated_gene[,2]
Nt <- anotated_gene[,3]
KO <- anotated_gene[,4]
Swissprot <- anotated_gene[,5]
Pfam <- anotated_gene[,6]


venn.diagram(list(Nr=Nr,Nt=Nt,KO=KO,Swissprot=Swissprot), "gj.png", height = 1000, width = 1000, resolution =300, imagetype="png", fill = c("cornflowerblue", "darkorchid1","green"),alpha = 0.5, fontfamily = "serif", fontface = "bold")

