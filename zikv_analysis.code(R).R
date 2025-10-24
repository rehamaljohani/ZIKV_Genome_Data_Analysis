ggplot(df, aes(x = Base, y = Count, fill = Base)) + 
  geom_bar(stat = "identity") + 
  theme_minimal() + 
  labs(
    title = "Frequency of Nucleotides in ZIKV Sequence", 
    x = "Nucleotide Base", 
    y = "Count"
    ) + 
  scale_fill_manual(values = c(
    "A" = "red", 
    "T" = "blue", 
    "G" = "green", 
    "C" = "yellow"
    ))

write.csv(data, "data.csv", row.names = FALSE)
write.csv(df, "df.csv", row.names = FALSE)
write.csv(base_counts, "base_counts.csv", row.names = FALSE)
write.csv(bases, "bases.csv", row.names = FALSE)
write.csv(sequence, "sequence.csv", row.names = FALSE)


