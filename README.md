# haskell-mystery

## emacs setup

will find emacs setup file ```emacs-setup.el``` which should go into ```~/.emacs.d/init.el```


```

# breakdown of project directories

- app/Main.hs - is for main executable
- src/ - is for library code
- test/ - is for test code that pulls in code from src/ but not allowed app/
  so can test libraries without intefner--ing with the app
  
this project was created by stack , i called my first project haskell

# create new project directory using stack
stack new haskell 
cd haskell

# build the project
stack build

# run the project 
stack exec haskell-exe

# the output of haskell-exe is someFunc
==> someFunc

# run the test suite - missing HUnit from package.yaml tests - HUnit 
stack test 

# create new project - initially it created haskell directory but we renamed it to haskell-mystery
# it really baulked up the language server , i needed to delete all the temporary flycheck-* and treesit-* files from /tmp

```

