```R
# Improved Subsetting: Handles Missing Columns

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D") # 'D' does not exist

# Check if all columns exist before subsetting
existing_cols <- intersect(cols_to_select, colnames(df))

if (length(existing_cols) > 0) {
  subset_df <- df[, existing_cols]
} else {
  warning("None of the specified columns exist in the data frame.")
  subset_df <- data.frame() # Return empty data frame if no columns exist
}

print(subset_df)
```