# haskell

app/Main.hs - is for main executable
src/ - is for library code
test/ - is for test code that pulls in code from src/ but not allowed app/
  so can test libraries without intefner--ing with the app
  
this project was created by stack , i called my first project haskell
```
stack new haskell 
cd haskell
stack build
stack exec haskell-exe 
==> someFunc
stack test 
```




# haskell-mystery
