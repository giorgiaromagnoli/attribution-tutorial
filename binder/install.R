options(
  repos = c(
    CRAN = "https://packagemanager.posit.co/cran/__linux__/jammy/2024-11-15"
  ),
  Ncpus = 1
)
Sys.setenv(MAKEFLAGS = "-j1")

if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak", repos = "https://r-lib.github.io/p/pak/stable")
}

if (!requireNamespace("rwwa", quietly = TRUE)) {
  pak::pkg_install(
    "WorldWeatherAttribution/rwwa",
    dependencies = c("Depends", "Imports", "LinkingTo")
  )
}
