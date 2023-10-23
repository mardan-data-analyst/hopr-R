# copy and paste

# Not worked in Linux
df.clipboard <- read.table("clipboard", header=TRUE)
# Error in file(file, "rt") : cannot open the connection
# In addition: Warning message:
#  In file(file, "rt") : clipboard cannot be opened or contains no text

# Worked in Mac
df.clipboard <- read.table(pipe("pbpaste"))



# XLconnect
# install.packages("XLConnect")
library(XLConnect)

## Reading Spreadsheets

# Step 1: Load Excel workbook
wb <- loadWorkbook("deck.xlsx")

# Step 2: Read worksheet
sheet1 <- readWorksheet(wb, sheet = 1, startRow = 0,
                        startCol = 0, endRow = 100, endCol = 3)

# Step 1 and 2 combined
rm(sheet1)
sheet1 <- readWorksheetFromFile("deck.xlsx", sheet = 1, startRow = 0,
                                startCol = 0, endRow = 100, endCol = 3)


## Writing Spreadsheets
poker <- sheet1

# Step 1: Set up a workbook object
rm(wb)
wb <- loadWorkbook("deck-wb.xlsx", create = TRUE)

# Step 2: Create a worksheet inside your workbook object 
createSheet(wb, "Sheet 1")

# Step 3:  Save your data frame or matrix to the sheet
writeWorksheet(wb, data = poker, sheet = "Sheet 1")

# Step 4: Save workbook
saveWorkbook(wb)

# Step 1, 2, 3, and 4 combined
writeWorksheetToFile("deck-wb-2.xlsx", data = poker,  sheet = "Sheet 1",
                     startRow = 1, startCol = 1)

# XLConnect’s vignette
vignette("XLConnect")

# package requirements
# - R, version 2.10.0 or higher
# - Java Runtime Environment


