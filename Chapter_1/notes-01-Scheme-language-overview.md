---
id: ms391d7byrbe5d7bm41syks
title: 01-Overview
desc: ""
updated: 1728186702684
created: 1728186212567
---

## History

Lisp was invented in the late 1950s as a for- malism for reasoning about the use of certain kinds of logical expres- sions, called recursion equations, as a model for computation. The language was conceived by John McCarthy and is based on his paper “Re- cursive Functions of Symbolic Expressions and their Computation by Machine” (McCarthy 1960).

Despite its inception as a mathematical formalism, Lisp is a practi- cal programming language. A Lisp interpreter is a machine that carries out processes described in the Lisp language. The first Lisp interpreter was implemented by McCarthy with the help of colleagues and students in the Artificial Intelligence Group of the MIT Research Laboratory of Electronics and in the MIT Computation Center Lisp, whose name is an acronym for LISt Processing, was designed to provide symbol-manipulating capabilities for attacking programming problems such as the symbolic differentiation and integration of algebraic expressions.
It included for this purpose new data objects known as atoms and lists, which most strikingly set it apart from all other languages of the period.

Lisp was not the product of a concerted design effort. Instead, it evolved informally in an experimental manner in response to users’ needs and to pragmatic implementation considerations.

Thus, Lisp is by now a family of dialects, which, while sharing most of the original features, may differ from one another in significant ways. The dialect of Lisp used in this book is called Scheme.

## Why Lisp?

Although Lisp has not yet overcome its old reputation as hopelessly inefficient, Lisp is now used in many applications where ef- ficiency is not the central concern. For example, Lisp has become a lan- guage of choice for operating-system shell languages and for extension languages for editors and computer-aided design systems.

If Lisp is not a mainstream language, why are we using it as the framework for our discussion of programming? Because the language possesses unique features that make it an excellent medium for studying important programming constructs and data structures and for relating them to the linguistic features that support them. The most significant of these features is the fact that Lisp descriptions of processes, called proce- dures, can themselves be represented and manipulated as Lisp data. The importance of this is that there are powerful program-design techniques that rely on the ability to blur the traditional distinction between “pas- sive” data and “active” processes. As we shall discover, Lisp’s flexibility in handling procedures as data makes it one of the most convenient languages in existence for exploring these techniques.

## How to dig deeper into a language

When we are learning a language, we should pay particular attention to the means that the language provides for combining simple ideas to form more complex ideas.

Every powerful language has three mechanisms for accomplishing this:

- **primitive expressions**
  which represent the simplest entities the language is concerned with,
- **means of combination**
  by which compound elements are built from simpler ones, and
- **means of abstraction**
  by which compound elements can be named and manipulated as units.

In programming, we deal with two kinds of elements: procedures and data.
