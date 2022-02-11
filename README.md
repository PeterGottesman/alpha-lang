# alpha-lang.el - a major mode and flycheck integration for CSE 443

## Installation
To install this package in emacs, include it as you would any other
package from github. Examples on how to do this are below.

### use-package
use-package is available at https://github.com/jwiegley/use-package.

In your terminal, clone this repo:

```shell
mkdir ~/.emacs.d/lisp/
cd ~/.emacs.d/lisp/
git clone git@github.com:PeterGottesman/alpha-lang
```

In your `~/.emacs.d/init.el` add:

```lisp
(use-package alpha-lang
	:load-path "lisp/alpha-lang/")
```

### el-get
el-get is available at https://github.com/dimitri/el-get

In your `~/.emacs.d/init.el` add:

```lisp
(el-get-bundle PeterGottesman/alpha-lang)
``` 

## Usage
This package expects to find the compiler for alpha in your system
PATH with the name `alpha-compiler`. I recommend symlinking it as such:

```shell
sudo ln -s /wherever/your/compiler/is/comp /usr/local/alpha-compiler
```

Remember to re-run this if your compiler moves to a different
location, such as when starting the next part of the project.

The error checking is performed automatically on any file with the
`.alpha` extension. This works by running the compiler and parsing out
the error message. Because it relies on the standard error message
format defined in Part 2 of the project, this will not work unless
your error messages are correct. Furthermore, this also means no
errors will be detected if your compiler doesn't work, or segfaults
during execution. _This is most useful as a tool for writing test
cases_, not one for directly testing your compiler.

I often get things wrong, I wrote this package two years ago, and I am
writing this README off of memory, so please let me know if I got
something wrong, or if the assignment is updated in a way that makes
this incompatible.
