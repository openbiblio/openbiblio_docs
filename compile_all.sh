#!/bin/bash

mysql-autodoc obib -Hlocalhost -uobib -p
a2x root.txt
asciidoc -a toc -a icons root.txt
for file in *; do
test -d "$file" && a2x "$file"/root.txt && asciidoc -a toc "$file"/root.txt
done
