# Transformation priority premise

## Definition

Transformation Priority Premise (TPP) is a programming approach developed by Robert C. Martin (Uncle Bob)
as a refinement to make the process of test-driven development (TDD) easier and more effective for a computer programmer.

## Transformations
Transformation Priority Premise states that simpler transformations should be preferred:

* ({} → nil) no code at all → code that employs nil
* (nil → constant)
* (constant → constant+) a simple constant to a more complex constant
* (constant → scalar) replacing a constant with a variable or an argument
* (statement → statements) adding more unconditional statements.
* (unconditional → if) splitting the execution path
* (scalar → array)
* (array → container)
* (statement → tail-recursion)
* (if → while)
* (statement → non-tail-recursion)
* (expression → function) replacing an expression with a function or algorithm
* (variable → assignment) replacing the value of a variable.
* (case) adding a case (or else) to an existing switch or if _Uncle Bob also explicitly stated: "There are likely others"_

## Talks

[Robert C Martin - The Transformation Priority Premise](https://www.youtube.com/watch?v=B93QezwTQpI)

[Codurance - TPP De lo básico, a específico y a genérico](https://www.youtube.com/watch?v=USzIPwFtYCE)
