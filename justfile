_default:
    @just --list

# Render the book (all formats) into build/
build:
    quarto render

# Render HTML only
html:
    quarto render --to html

# Render PDF only
pdf:
    quarto render --to pdf

# Open the built HTML in the browser (builds HTML first if missing)
show:
    test -f build/index.html || just html
    xdg-open build/index.html

# Live-reloading preview in the browser
preview:
    quarto preview
