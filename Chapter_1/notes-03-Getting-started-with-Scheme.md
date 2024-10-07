---
id: 8t7o60kgwyok5kbsm2mutjm
title: 03-Getting-started-with-Scheme
desc: ''
updated: 1728294239997
created: 1728294232113
---

## File extension

Most commonly used file extension for Scheme is `.scm`.

## Syntax

How to define a process:

```scm
(define name 3)
```

### Conditional Expressions and Predicates

#### Conditional expression

**Synopsis**

It consists of the symbol `cond` followed by parenthesized pairs of expressions (which are called _clauses_).

```scm
(cond (⟨p1⟩ ⟨e1⟩)
      (⟨p2⟩ ⟨e2⟩)
      ...
      (⟨pn⟩ ⟨en⟩)
      (else ⟨en⟩))
```

The first expression in each pair is a predicate—that is, an expression whose value is interpreted as either true or false.

`else` is a special symbol that can be used in place of the `⟨p⟩` in the final clause of a cond. This causes the cond to return as its value the value of the corresponding `⟨e⟩` whenever all previous clauses have been bypassed. In fact, any expression that always evaluates to a true value could be used as the final `⟨p⟩` here.

**Evaluation order**

The predicate `⟨p1⟩` is evaluated first. If its value is false, then `⟨p2⟩` is evaluated. This process continues until a predicate is found whose value is `true`, in which case the interpreter returns the value of the corresponding consequent expression `⟨e⟩` of the clause as the value of the conditional expression. If none of the `⟨p⟩`’s is found to be `true`, the value of the `cond` is undefined.

The word _predicate_ is used for procedures that return `true` or `false`, as well as for expressions that evaluate to `true` or `false`.

```scm
(define (abs x)
(cond ((< x 0) (- x))
(else x)))
```

#### If expression

**Synopsis**

`if` is a restricted type of conditional that can be used when there are precisely two cases in the case analysis:

`(if ⟨predicate⟩ ⟨consequent⟩ ⟨alternative⟩)`

```scm
(define (abs x)
  (if (< x 0)
    (- x)
    x))
```

**Evaluation order**

To evaluate an if expression, the interpreter starts by evaluating the `⟨predicate⟩` part of the expression. If the `⟨predicate⟩` evaluates to a true value, the interpreter then evaluates the `⟨consequent⟩` and returns its value. Otherwise it evaluates the `⟨alternative⟩` and returns its value.

**Logical operators**

Which Allows use to construct compound predicates:

- `<`
- `=`
- `>`
- `(and ⟨e1⟩ ... ⟨en⟩)`
- `(or ⟨e1⟩ ... ⟨en⟩)`
- `(not ⟨e⟩)`
