#!/bin/bash

a2x root.txt
asciidoc root.txt
for file in *; do
test -d "$file" && a2x "$file"/root.txt && asciidoc "$file"/root.txt
done
