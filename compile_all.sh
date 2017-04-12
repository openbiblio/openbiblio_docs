#!/bin/bash

#mysql-autodoc obib -Hlocalhost -uobib -p -fschema.html
#a2x --dblatex-opts "-P latex.output.revhistory=0" root.txt
a2x --fop root.txt
asciidoc -a toc -a icons root.txt
for file in *; do
test -d "$file" && a2x --fop "$file"/root.txt && asciidoc -a toc "$file"/root.txt
done
