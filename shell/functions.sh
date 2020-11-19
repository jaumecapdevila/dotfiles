# Slides
function slides_to_pdf {
  reveal-md --theme solarized $1 --print $1.pdf
}

# Antigen
function antigen_load {
  antigen bundle $1
}

###################
# Languages
###################

# PHP
function php8 {
  docker run --rm -v "$PWD:/app/" php:8.0.0RC4-cli php "/app/$1"
}
