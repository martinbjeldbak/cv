# Martin Madsens's CV
![Build CV PDF](https://github.com/martinbjeldbak/CV/workflows/Build%20CV%20PDF/badge.svg)

My CV, using [my](https://github.com/martinbjeldbak/afriggeri-cv) fork of [ashee/cv](https://github.com/ashee/cv), which uses XeTeX adds [font-awesome](http://fortawesome.github.io/Font-Awesome/) social icons, removes bibliography loading, loads [microtype](https://www.ctan.org/pkg/microtype?lang=en), Fontspec to use the Helvetica font type, among others.

![Sample image of generated CV](https://cloud.githubusercontent.com/assets/823316/22179176/98b1e420-e097-11e6-9415-4504f921c3ae.png)

## Installation

Ensure you have the submodule initialized for this repository. You can do this on clone.
Alternatively

```sh
$ git submodule init
$ git submodule update
```

And ensure you have the dependencies installed

```sh
$ sudo tlmgr install latexmk textpos fontawesome
$ brew cask install font-xits
```

If you get an error loading FontAwesome (see StackOverflow [here](https://tex.stackexchange.com/questions/132888/fontawesome-font-not-found)), you may need to manually install the fontawesome font from the `fontawesome` TeX package. You can do this by visiting the folder output in `tlmgr info --list fontawesome` containing the `.otf` file and double-clicking on it to install it to your font book.

You should now be able to run make and generate a new PDF.

```sh
$ make
```

For hot compilation you can run the below command, which will open your PDF viewer of choice and
automagically recompile on source file changes.

```sh
$ make watch
```

Voila. If you have any issues with this process, do open a new issue.
