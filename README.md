# SICP exercise solutions and notes

My notes and exercise soluations for SICP.

## Get the book

Download the 2nd Edition of SICP, there are many other edition, including a JavaScript edition, but the most recommended one is the original one, which adopted Scheme(a dialect of Lisp) as the programming language, [download from here](https://web.mit.edu/6.001/6.037/sicp.pdf).

## Setting-up development environment

1. **Install and setup `Scheme` language environment on Mac OS**

```sh
brew install mit-scheme
```

2. **Get you IDE ready**

My choice of editor is **Visual Studio Code**.

Then install `vscode-scheme` extension, you will get **snippets support** and **language highlighting**.

3. **Run `Scheme` code**

To start a interactive REPL (Read-Evaluate-Print Loop):

```sh
scheme
```

To execute a `Scheme` file, first save the file as `.scm` extension, then execute:

```sh
scheme < ./index.scm
```

## Solve the exercises

Try to solve all exercises listed in the book, you can reference my solutions from this repo.

## My notes

- [Chapter1: 01-Scheme language overview](Chapter_1/notes-01-Scheme-language-overview.md)
- [Chapter1: 02-Scheme evaluation order](Chapter_1/notes-02-Scheme-evaluation-order.md)
- [Chapter1: 03-Getting started with Scheme](Chapter_1/notes-03-Getting-started-with-Scheme.md)
- [Chapter1: 04-Scheme basic expressions](Chapter_1/notes-04-Scheme-basic-expressions.md)
