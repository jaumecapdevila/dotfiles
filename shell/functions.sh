# Slides
function slides_to_pdf {
  reveal-md --theme solarized $1 --print $1.pdf
}

# Antigen
function antigen_load {
  antigen bundle $1
}
