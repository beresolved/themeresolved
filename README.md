# themeresolved
R package for a ggplot2 resolved theme in line with the company house style

# Installation
Installation can be done through devtools from the github repo directly. Please make sure that: 

1. You have an account on github with access permissions to beresolved
2. You have created an access token for your account
3. You have added that access token to your .Renviron through the GITHUB_PAT variable

When this is done, simple use: 

``` R
library(devtools)
devtools::install_github('beresolved\themeresolved',ref='v1')
```

Please note the *ref* setting. The code is not in the default master branch, but in the v1 branch. 

# Example usage
To use the package: 

```R
library(themeresolved)
library(ggplot2)
theme_set(theme_resolved())
ggplot(iris,aes(x=Sepal.Width,y=Sepal.Length,color=Species))+geom_point()+facet_grid(Species~.)
```

All of your plots will be styled using this theme until you restart your R session. 

# A note on font use
By default, theme_resolved uses Lato and Oswald font families (Lato being the base family). Please ensure that:

1. These fonts are properly installed on your system
2. These fonts are known by R/Rstudio

To include the fonts in R/Rstudio, please use the [extrafont](https://cran.r-project.org/web/packages/extrafont/README.html) package (and extrafontdb). For an excellent blog on how to do this have a look at [this one](https://blog.revolutionanalytics.com/2012/09/how-to-use-your-favorite-fonts-in-r-charts.html). 


