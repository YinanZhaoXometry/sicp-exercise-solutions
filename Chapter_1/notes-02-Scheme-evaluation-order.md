---
id: v33crlgpgcsnv2efs7h7x1w
title: 02-Evaluation-Order
desc: ''
updated: 1728188231718
created: 1728188231718
---


## Evaluation Order

### **Applicative-order evaluation**

**Applicative-order evaluation** (also known as "eager evaluation") is an evaluation strategy to determine the order in which expressions are evaluated. In this evaluation strategy, the arguments to a function are evaluated first, before the function itself is applied.

Here’s a simple explanation of the process:

1. Evaluate the arguments: When a function is called, each of its arguments (the values or expressions passed into the function) is evaluated before the function body is executed.
2. Apply the function: After the arguments are fully evaluated, the function is applied to the values of these arguments.

**Example**

```ruby
def add(a, b)
  a + b
end

add(3 * 2, 4 + 5)
```

In this example, applicative-order evaluation means that the expressions `3 * 2` and `4 + 5` are evaluated first, yielding 6 and 9, respectively. Then, the function add is applied to the values 6 and 9.

**Languages**

1. Imperative languages
   Most imperative languages use it:

- C
- C++
- Java
- Python
- Ruby
- JavaScript
- Go
- Swift
- C#

2. Functional Languages

- OCaml
- Scala
- Scheme (default behavior)
- F#
- Lisp

3. Scripting Languages

- Perl
- PHP
- Lua

### **Normal-order evaluation**

**Normal-order evaluation** (also known as “lazy evaluation”) is an evaluation strategy, where the arguments are not evaluated until they are actually used within the function. Some functional programming languages, like Haskell, use lazy evaluation, where the evaluation of arguments can be deferred until needed.

Normal-order evaluation can be beneficial when working with infinite data structures, or when you want to avoid computations until they’re strictly necessary. However, it can introduce performance challenges due to deferred evaluations building up over time.

**Languages**

- Haskell
- Lisp (Optional Lazy Evaluation)
  Lisp and Scheme are not lazy by default, but lazy evaluation can be achieved using macros or specific constructs like delay and force in Scheme.

### Lisp's approach

Lisp uses applicative-order evaluation, partly because of the additional efficiency obtained from avoiding multiple evaluations of expressions.

For example:

```scm
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares (+ 5 1) (* 5 2))
(+   (square (+ 5 1))      (square (* 5 2))  )
(+   (* (+ 5 1) (+ 5 1))   (* (* 5 2) (* 5 2)))
```