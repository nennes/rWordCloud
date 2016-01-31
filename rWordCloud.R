library(wordcloud)

# Setup the wordcloud palette.
pal <- brewer.pal(8,"Dark2")
pal <- pal[-(1:2)]

# CSV Filename
csv_fname <- "tags.csv"

# Read the CSV into a data frame
tags <- read.csv(csv_fname, stringsAsFactors=F)

# Set the columns names to keyword, size
names(tags) = c("keyword", "importance")

# Save to a PNG file with a transparent background
png("tags.png", width=400,height=400, units="px",bg = "transparent")

# Produce the Wordcloud
wordcloud(tags$keyword, freq=tags$importance, colors=pal)

dev.off()