
[![DOI](https://zenodo.org/badge/457404823.svg)](https://zenodo.org/doi/10.5281/zenodo.10472306)

<!-- badges: start -->
<!-- badges: end -->

The goal of this repo is to host the code to reproduce the manuscript [The R Package BHAM: Fast and Scalable Bayesian Hierarchical Additive Model for High-dimensional Data the](https://arxiv.org/pdf/2207.02348.pdf). The repository is set up using the R workflow package [targets](https://cran.r-project.org/web/packages/targets/index.html), and can be reproduced easily via targets syntax.


## Get Started

1.  Download [R](https://www.r-project.org/) and [RStudio
    IDE](https://www.rstudio.com/products/rstudio/download/)
2.  Install the necessary workflow packages
    [`targets`](https://cran.r-project.org/web/packages/targets/index.html)
3. Download and install required R pacakges
    
    ```
    install.packages("rticles")
    devtools::install_github("nyiuab/BhGLM")
    devtools::install_github("boyiguo1/BHAM")
    ```

4.  Call `targets::tar_make("manu")` to reproduce the manuscript
