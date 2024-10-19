# # For development use only (comment the code after use (Ctrl + Shift + C)).
#
# .rs.restartR()
# .libPaths()
# cffr::cff_validate()
# knitr::clean_cache()
# lintr::use_lintr()
# lintr::lint_dir("R")
# normalizePath(readClipboard(), "/", mustWork = FALSE)
# renv::init()
# renv::equip()
# renv::activate()
# renv::deactivate()
# renv::status()
# renv::dependencies("R/quarto-setup.R")
# renv::install()
# renv::update()
# renv::restore()
# renv::snapshot()
# renv::clean(actions = "unsed.packages")
# rutils:::bbt_scan_citation_keys()
# rutils:::bbt_write_quarto_bib()
# rutils:::set_quarto_speel_check()
# rutils:::gather_words_from_spell_check(pattern = "\\.qmd$|\\.Rmd$")
# rutils:::spell_check_quarto(dir = "", pattern = "\\.qmd$|\\.Rmd$")
# rutils:::update_quarto_wordlist(dir = "", pattern = "\\.qmd$|\\.Rmd$")
# rutils:::clean_quarto_mess()
# rutils:::quarto_status("drafting")
# spelling::spell_check_files("index.qmd")
# urlchecker::url_check()
# urlchecker::url_update()

# # Quarto (see <https://quarto.org/docs/projects/quarto-projects.html>)
#
# quarto render
# quarto render index.qmd --to pdf

## Copy notes to clipboard -----

# here::here("notes.md") |>
#   readr::read_lines() |>
#   utils::writeClipboard()
