
`maRalago` : Is Trump At Mar-a-Lago (and more)

See if Trump is at Mar-a-Lago and also retreive total trips/costs to Mar-a-Lago as well as a list of programs with unit costs to assist in derivation of what the narcisstic waste of money could to to fund or keep funding.

It relies on a Google spreadsheet maintaind by the Center for American Progress Action Fund which was discovered after seeing <https://istrumpatmaralago.org/>.

The following functions are implemented:

-   `could_pay_for`: Could have funded
-   `is_there`: Is Trump at Mar-a-Lago
-   `trips_info`: Trip Data

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

    ## [1] '0.1.0'

``` r
is_there()
```

    ## [1] TRUE

``` r
trips_info()
```

    ## # A tibble: 7 × 2
    ##   weekend       cost
    ##     <chr>      <chr>
    ## 1       1 $3,600,000
    ## 2       2 $3,600,000
    ## 3       3 $3,600,000
    ## 4       4 $3,600,000
    ## 5       5 $3,600,000
    ## 6       6 $3,600,000
    ## 7       7 $3,600,000

``` r
could_pay_for()
```

    ## # A tibble: 8 × 4
    ##                    name                       desc   unitCost
    ##                   <chr>                      <chr>      <chr>
    ## 1       Meals on Wheels Meals on Wheels recipients     $2,765
    ## 2          School Lunch      children fed per year        416
    ## 3              Medicaid        Medicaid recipients     $5,790
    ## 4      Homelessness aid               years funded $4,000,000
    ## 5  Nutrition assistance               meals funded       1.39
    ## 6 Public school funding students educated per year     12,296
    ## 7           Pell Grants       Pell Grants per year       3690
    ## 8 National Park Service     Trump salary donations    $78,333
    ## # ... with 1 more variables: citation <chr>
