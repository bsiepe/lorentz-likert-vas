## set R version (https://hub.docker.com/r/rocker/verse/tags)
FROM rocker/verse:4.4.1

## set up directories
RUN mkdir /home/rstudio/scripts /home/rstudio/data /home/rstudio/output home/rstudio/figures
# COPY centrality-uncertainty.Rproj /home/rstudio/

## install R packages from CRAN the last day of the specified R version
## ncpus set to -1 (all available cores)
RUN install2.r --error --skipinstalled --ncpus -1 \
    tidyverse

