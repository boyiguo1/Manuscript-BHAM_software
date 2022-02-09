## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

## tar_plan supports drake-style targets and also tar_target()
tar_plan(

# target = function_to_make(arg), ## drake style

# tar_target(target2, function_to_make2(arg)) ## targets style
  # Manuscript --------------------------------------------------------------
  # * Child File Paths
  tar_files(child_rmds,
            c(
              # "./Manuscript/01-intro.Rmd",
              # "./Manuscript/02-method.Rmd",
              # "./Manuscript/03-sim.Rmd",
              # "./Manuscript/04-real_data.Rmd",
              # "./Manuscript/05-conclusion.Rmd",
              "./Manuscript/references.bib"
            )
  ),

  # * Render Manuscript
  tar_render(manu,
             "./Manuscript/00-main.Rmd",
             output_dir = "./",
             output_file = "BHAM_software.pdf"
  ),
)
