# CompSnameCheck
Compound Surname Check 

This package includes a simple function to extract the Surname and First Name from Chinese Names, automatically checking and modifing the surname if it's a Chinese compound surname.

## Author

[Minghui Zhu](https://zhuminghui.org)

E-mail: [zhuminghui17@gmail.com](mailto:zhuminghui17@gmail.com)

Website: [zhuminghui.org](https://zhuminghui.org)

## User Guide

### Installation

``` r
## Method 1: Install from CRAN
install.packages("CompSnameCheck")
## Method 2: Install from GitHub
install.packages("devtools")
devtools::install_github("zhuminghui17/CompSurnameCheck", force=TRUE, upgrade=FALSE)
```

### Package Dependency

`CompSnameCheck` depends on many important R packages.

Loading `CompSnameCheck` by `library(CompSnameCheck)` will also load these R packages for you:

-   **[Data]:**

    -   [`rio`](https://cran.r-project.org/package=rio): Data import and export (for all file formats).
    -   [`dplyr`](https://cran.r-project.org/package=dplyr): Data manipulation and processing.
    -   [`tidyr`](https://cran.r-project.org/package=tidyr): Data cleaning and reshaping.
    -   [`stringr`](https://cran.r-project.org/package=stringr): Toolbox for string operation (with regular expressions).

### How to Use

For details, run `?CompSnameCheck` or `help(CompSnameCheck)` to read the help page.
``` r
## Templete 
library(CompSnameCheck)
CompSnameCheck(data, name)
```
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
