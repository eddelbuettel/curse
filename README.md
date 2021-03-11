## curse: R package to randomly select some colorful language

### Fork

This package is a maintained fork / split off the initial and lovely [cuRse package](https://github.com/G-Hermanson/cuRse) by [Guilherme Hermanson](https://github.com/G-Hermanson).  I sent its repo a number of issue tickets and pull requests which, sadly, have not (yet?) gotten any response so I figured I would just create a quick local copy.

### Motivation

Guilherme covered that eloquently:

> Writing a code can be pretty exhaustive and might sometimes drive people really mad to the point they just want to smash things, rip their hair off, or just close their laptops and never again think of work. I believe most (if not all) that have ventured into the realms of coding can relate to a similar situation or two. In that regard, the `cuRse` package was built to try helping users to release some of the tension when such unfortunate moments come to exist. It is somewhat acknowledged that delivering curse words can actually help one to be in a greater state of relaxation. Of course it might not work for everyone, but it could for you - I know it does for me ;D
>
> In general, this package provides a simple function to print some random cursing words or swearing phrases on your screen. No biggie.

### Installation

Install `curse` from `github`:
```{r}
remotes::install_github("eddelbuettel/curse")
```

### Status

Fully `R CMD check --as-cran` compliant for both R-release and R-devel.
Somewhat rewritten, now reads phrase into package environment and returns a typed object with custom `print` method (just like packages [gaussfacts](https://github.com/eddelbuettel/gaussfacts) and [rmsfact](https://github.com/eddelbuettel/rmsfact) do).

### Authors

Guilherme Hermanson and Dirk Eddelbuettel

### License

MIT
