cd
if [[ $# -eq 0 ]] ; then
    echo "Usage: $0 filename"
    exit 1
fi
filename="$1"
if [ -d "Desktop/$1" ]; then
  echo "Error: ~/Desktop/$1 already exists."
  exit 1
fi
read -r -p "Create '$1' on Desktop? [y/n] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    cp -r ~/dev/latex-templates/homework ~/Desktop/$1;
    cd ~/Desktop/$1
    rm *.aux *.synctex.gz *.log *.pdf
    mv homework.tex $1.tex
    open .
    echo "Success. Exiting."
    exit 0
else
    echo "Operation canceled."
    exit 1
fi
exit 1
