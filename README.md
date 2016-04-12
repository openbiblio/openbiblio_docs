# openbiblio_docs
Welcome to the documentation for [OpenBiblio 1.x](https://bitbucket.org/mstetson/obiblio-1.0-wip).  We would really appreciate your
contribution and collaboration.

# Contributing basics

The files here document the [obiblio-1.0-wip repository](https://bitbucket.org/mstetson/obiblio-1.0-wip/src) as it currently stands, and will aim to keep up with bugfixes and new features as they are added.

The folders you see in this documentation repository each represent a different book of end-user documentation.  Here is a list of what folders produce which documentation:

Source in this folder| Public HTML version|Public PDF version
------------ | -------------|-------------
cataloging|http://openbiblio.github.io/openbiblio_docs/cataloging/root.html|http://openbiblio.github.io/openbiblio_docs/cataloging/root.pdf
circulation|http://openbiblio.github.io/openbiblio_docs/circulation/root.html|http://openbiblio.github.io/openbiblio_docs/circulation/root.pdf
community|http://openbiblio.github.io/openbiblio_docs/community/root.html|http://openbiblio.github.io/openbiblio_docs/community/root.pdf
installation|http://openbiblio.github.io/openbiblio_docs/installation/root.html|http://openbiblio.github.io/openbiblio_docs/installation/root.pdf
recipes|http://openbiblio.github.io/openbiblio_docs/recipes/root.html|http://openbiblio.github.io/openbiblio_docs/recipes/root.pdf
reports|http://openbiblio.github.io/openbiblio_docs/reports/root.html|http://openbiblio.github.io/openbiblio_docs/reports/root.pdf
research|http://openbiblio.github.io/openbiblio_docs/research/root.html|http://openbiblio.github.io/openbiblio_docs/research/root.pdf
sysadmin|http://openbiblio.github.io/openbiblio_docs/sysadmin/root.html|http://openbiblio.github.io/openbiblio_docs/sysadmin/root.pdf
n/a|http://openbiblio.github.io/openbiblio_docs/root.html|http://openbiblio.github.io/openbiblio_docs/root.pdf

The `txt` files are written in ASCIIDOC, which the Evergreen community has [kindly documented](https://docs.google.com/document/u/1/pub?id=17KpO9tMYBObec3coijFAxFDjDCrOIfoVDMa3Q1k8_lE).

Each folder contains a file called `root.txt`, which uses ASCIIDOC `include::my_file_name.txt[]` statements to gather all the individual pieces of documentation that it needs.  The [massive complete book](http://openbiblio.github.io/openbiblio_docs/root.pdf) is generated by a `root.txt` file in the root of this directory.

The script `compile_all.sh` actually creates all the PDF and HTML files.  If you've got a Linux box, feel free to run it after you make changes to the `.txt` files.  Otherwise, don't sweat it; I'll compile your changes next time I make a change to the docs.

GitHub automatically publishes the docs because we are using the `gh-pages` branch.

You will also probably wish to consult the codebase to figure out exact behavior.  You can find the code here: https://bitbucket.org/mstetson/obiblio-1.0-wip/src

# Contributing through GitHub's Web interface
Note: You might want to download the Github Desktop at https://desktop.github.com/ first.

1. If you don't have edit permissions on this directory, click "Fork" to make your own working copy of the repo.
2. If you are making a simple edit, simply find the correct `.txt` file and make your correction.
3. If you are adding a lot of new content, create a new `.txt` file in the appropriate folder.  Put an `include::my_new_file.txt[]` in the folder's `root.txt` file.
4. If you are documenting a completely new module and wish to create a new folder, click "create file" and name the file `module_name` + forward slash + `root.txt`.  For example, if you wanted to document a space exploration module, you would create a file called `space_exploration/root.txt`.
4. Save your edits.
5. If you don't have edit permissions, submit a pull request to get your changes incorporated.  This sounds complicated, but it's
actually pretty simple:
  * Go to your forked repository.
  * Click the pull requests tab
  * Click New Pull Request.
  * Verify your changes, then click "Create pull request".

# Contributing on the command line.
1. `git clone https://github.com/openbiblio/openbiblio_docs`
2. If you are making a simple edit, simply find the correct `.txt` file and make your correction.
3. If you are adding a lot of new content, create a new `.txt` file in the appropriate folder.  Put an `include::my_new_file.txt[]` in the folder's `root.txt` file.
4. `git push origin gh-pages`
