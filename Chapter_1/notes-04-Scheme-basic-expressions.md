---
id: 22edfevj41xiuck4qb949uz
title: 04-Basic-Expressions
desc: ''
updated: 1728210057024
created: 1728186797479
---

### Expression

An **expression** is a fundamental unit of code that can be evaluated to produce a value. Everything in Scheme is an expression, and expressions can be:

1. Atoms (simple values like numbers, booleans, or symbols).
2. Procedure calls (a function applied to arguments).
3. Special forms (such as define, if, or lambda).
4. Combinations (expressions that contain other expressions).

### Prefix notation

Prefix notation is a convention of placing the operator to the left of the operands.

Prefix notation has several advantages, however. One of them is that it can accommodate procedures that may take an arbitrary num- ber of arguments.

```scm
(+ 21 35 12 7) ; 75

```

A second advantage of prefix notation is that it extends in a straightforward way to allow combinations to be nested, that is, to have combinations whose elements are themselves combinations:

```scm
(+ (* 3 5) (- 10 6)) ; 19
```

### Naming and Environment

Define a variable: `(define size 2)`

`define` is Scheme's simplest means of abstraction, for it allows us to use simple names to refer to the results of compound operations

It should be clear that the possibility of associating values with symbols and later retrieving them means that the interpreter must maintain some sort of memory that keeps track of the name-object pairs. This memory is called the _environment_ (more precisely the _global environment_).

```scm
(define x 4)
(+ x 1)
```

- The values of numerals are the numbers that they name,
- The values of built-in operators are the machine instruction se- quences that carry out the corresponding operations, and
- The values of other names are the objects associated with those names in the environment.

We may regard the second rule as a special case of the third one by stipulating that symbols such as `+` and `*` are also included in the global environment, and are associated with the sequences of machine instructions that are their “values.”

The key point to notice is the role of the environment in determining the meaning of the symbols in expressions.

### Procedure definition

```scm
(define (⟨name⟩ ⟨formal parameters⟩)
  ⟨body⟩)
```

The `⟨name⟩` is a symbol to be associated with the procedure definition in the environment. The `⟨formal parameters⟩` are the names used within the body of the procedure to refer to the corresponding arguments of the procedure. The `⟨body⟩` is an expression that will yield the value of the procedure application when the formal parameters are replaced by the actual arguments to which the procedure is applied.

The `⟨name⟩` and the `⟨formal parameters⟩` are grouped within parentheses, just as they would be in an actual call to the procedure being defined.

The _body_ of the _procedure_ can be a sequence of expressions. In this case, the interpreter evaluates each expression in the sequence in turn and returns the value of the final expression as the value of the procedure application.

```scm
(square 21) ; 441
(square (+ 2 5)) ; 49
(square (square 3)) ; 81
```

```scm
(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
```
