
`maRalago` : Is Trump At Mar-a-Lago (and more)

See if Trump is at Mar-a-Lago and also retreive total trips/costs to Mar-a-Lago as well as a list of programs with unit costs to assist in derivation of what the narcisstic waste of money could be used to fund or keep funding.

It relies on a Google spreadsheet maintaind by the Center for American Progress Action Fund which was discovered after seeing <https://istrumpatmaralago.org/>.

The following functions are implemented:

-   `could_pay_for`: Retrieve program names, descriptions and unit costs
-   `download_maralago`: Download the full Excel file
-   `is_there`: Is Trump at Mar-a-Lago?
-   `trips_info`: Retrieve Trip Data (with costs)

### Installation

``` r
devtools::install_github("hrbrmstr/maRalago")
```

### Usage

``` r
library(maRalago)

# current verison
packageVersion("maRalago")
```

    ## [1] '0.2.0'

``` r
is_there()
```

    ## [1] TRUE

``` r
trips_info()
```

    ##   weekend    cost
    ## 1       1 3600000
    ## 2       2 3600000
    ## 3       3 3600000
    ## 4       4 3600000
    ## 5       5 3600000
    ## 6       6 3600000
    ## 7       7 3600000

``` r
could_pay_for()
```

    ##                    name                       desc   unitCost
    ## 1       Meals on Wheels Meals on Wheels recipients    2765.00
    ## 2          School Lunch      children fed per year     416.00
    ## 3              Medicaid        Medicaid recipients    5790.00
    ## 4      Homelessness aid               years funded 4000000.00
    ## 5  Nutrition assistance               meals funded       1.39
    ## 6 Public school funding students educated per year   12296.00
    ## 7           Pell Grants       Pell Grants per year    3690.00
    ## 8 National Park Service     Trump salary donations   78333.00
    ##                                                                                                                                                                    citation
    ## 1                                                              Feeding a senior through Meals on Wheels costs $2,765 a year. President Trump wants to slash their funding. 
    ## 2                                                      The National School Lunch Program provides food assistance to children in schools for only $416 per child per year. 
    ## 3                 Helping low-income people access health care through Medicaid costs $5,790 per recipient a year. President Trump continues to threaten Medicaid funding. 
    ## 4           Trump wants to cut the U.S. Interagency Council on Homelessness which combats homelessness, particularly for veterans, and only costs $4 million a year to run.
    ## 5                                       The Supplemental Nutrition Assistance Program (SNAP) helps millions of families put food on the table and only costs $1.39 a meal. 
    ## 6                                                                                                      It costs a public school around $12,296 a year to educate students. 
    ## 7                                                                             Pell Grants help low-income students pay for college and have been on Trump's chopping block.
    ## 8 President Trump donated his first quarter's salary to the National Park Service, which is a drop in the bucket compared to the taxpayer money spent on Mar-a-Lago trips.
