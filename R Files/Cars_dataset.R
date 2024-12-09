data()
data(mtcars)
mtcars
View(mtcars)

readr_example()
read_csv(readr_example("mtcars.csv"))

library(readxl)
readxl_example()
read_excel(readxl_example("type-me.xlsx"))
excel_sheets(readxl_example("type-me.xlsx"))
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")