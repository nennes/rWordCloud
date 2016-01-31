library(wordcloud)

# Setup the wordcloud palette.
pal <- brewer.pal(8,"Dark2")
pal <- pal[-(1:2)]

# CSV Filename
csv_fname <- "skills.csv"

# Read the CSV into a data frame
skills <- read.csv(csv_fname, stringsAsFactors=F)

# Set the columns names to keyword, size
names(skills) = c("keyword", "size")

# Save to a PNG file with a transparent background
png("skills.png", width=400,height=400, units="px",bg = "transparent")

# Produce the Wordcloud
wordcloud(skills$keyword, freq=skills$size, colors=pal)

dev.off()

