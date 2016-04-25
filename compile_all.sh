#!/bin/bash

mysql-autodoc obib -Hlocalhost -uobib -p
a2x --dblatex-opts "-P latex.output.revhistory=0" root.txt
asciidoc -a toc -a icons root.txt
for file in *; do
test -d "$file" && a2x --dblatex-opts "-P latex.output.revhistory=0" "$file"/root.txt && asciidoc -a toc "$file"/root.txt
done
