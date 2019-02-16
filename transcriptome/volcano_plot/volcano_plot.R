library(ggplot2)
library(ggrepel)
library(plotly)
data <- read.table("new_RSEM.gene.counts.matrix.conditionA_vs_conditionB.DESeq2.DE_results.csv",header = TRUE,sep=",")
head(data)

p = ggplot(data, aes(-log2FoldChange, -log10(padj),colour=sig)) +
      geom_point(size=2,alpha=0.8, shape=20,position="jitter") +
      scale_color_manual(values = c("blue","green", "red")) +
      theme_bw(base_size = 15) +
      labs(title = "volcano plot") +
      geom_hline(yintercept = -log10(0.001), lty=4,col="gray",lwd=0.5) +
      geom_vline(xintercept = c(-2, 2), lty=4,col="gray",lwd=0.5) +
      theme(axis.title = element_text(size = 16),
        axis.text = element_text(size = 14))
#p <- ggplotly(p)
p

  