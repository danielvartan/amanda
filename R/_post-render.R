# library(beepr)
# library(groomr) # https://github.com/danielvartan/groomr
# library(magrittr)
# library(readr)
# library(stringr)
# library(utils)

# Remove empty lines from `README.md` -----

here::here("README.md") |> groomr::remove_blank_line_dups()

# Update `LICENSE.md` -----

file <- here::here("LICENSE.md")

data <-
  file |>
  readr::read_lines() |>
  stringr::str_replace_all(
    pattern = "20\\d{2}",
    replacement = as.character(Sys.Date() |> lubridate::year())
  )

data |> readr::write_lines(file)

## Add notes to `notes.md` -----

notes <-
  here::here("index.qmd") |>
  readr::read_lines() |>
  groomr::split_by_pattern(include_start = TRUE) |>
  lapply(
    function(x) {
      groomr::split_by_pattern(
        x,
        start_pattern = "\\{\\.notes\\}",
        end_pattern = "^::",
        include_start = FALSE,
        name_list = FALSE
      ) |>
        unlist()
    }
  )

out <- character()

for (i in seq_along(notes)) {
  if (is.null(notes[[i]])) {
    out <- append(out, c(names(notes)[i], ""))
  } else {
    out <- append(out, c(names(notes)[i], "", notes[[i]], ""))
  }
}

out |> readr::write_lines(here::here("notes.md"))

here::here("notes.md") |> groomr::remove_blank_line_dups()

# Check if the script ran successfully -----

beepr::beep(1)

Sys.sleep(3)
