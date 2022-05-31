## Load your packages, e.g. library(targets).
library(targets)
library(tarchetypes)

tar_option_set(
  packages = c("rticles")
)

## Load your R files
# lapply(list.files("./R", full.names = TRUE), source)

## tar_plan supports drake-style targets and also tar_target()
tar_plan(


  # Manuscript --------------------------------------------------------------
  # * Child File Paths
  tar_files(child_rmds,
            c(
              "./Manuscript/01-intro.Rmd",
              "./Manuscript/02-model.Rmd",
              "./Manuscript/03-code.Rmd",
              "./Manuscript/04-discussion.Rmd",
              "./Manuscript/references.bib"
            )
  ),

  # * Render Manuscript
  tar_render(manu,
             "Manuscript/00-main.Rmd",
             output_file = "BHAM_software.pdf"
  )
)
