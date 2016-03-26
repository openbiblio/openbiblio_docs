#!/bin/bash

a2x root.txt
asciidoc -a toc root.txt
for file in *; do
test -d "$file" && a2x "$file"/root.txt && asciidoc -a toc "$file"/root.txt
done
