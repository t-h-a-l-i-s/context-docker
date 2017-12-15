With this image it is possible to create PDF files from ConTeXt source files without the need of installing ConTeXt at all (which seems to be nearly impossible on Windows by the way).

# Usage

One precondition is that your current working directory on the host machine is a shared folder (or subfolder). If you have a ConTeXt source file `context-example.tex` (e.g. the one from [Wikipedia](https://en.wikipedia.org/wiki/ConTeXt#Example_of_code)) in the current working directory the command
```
$ docker run --rm -v "$(PWD):/pwd" -w /pwd \
   thalis/context:debian-slim-stable --purgeall context-example
```
produces an output file `context-example.pdf` within the current directory on Linux/MacOS/Powershell.

If you want to process documents on a Windows shell simply use `%cd` instead of `$(pwd)`:
```
$ docker run --rm -v %cd%:/pwd -w /pwd \
   thalis/context:debian-slim-stable --purgeall context-example
```

