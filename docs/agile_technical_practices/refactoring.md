# Refactoring

There are five **atomic refactors** that can be applied to methods, functions, classes, variables, etc.

* Rename – Change the name of classes, methods, variables….
* Extract – Extract a class (or methods or variables…), creating a new abstraction.
* Inline – The inverse of extract – inline a method (or variable), deconstructing an abstraction.
* Move – Move a class (or methods or variables…) to some other place in the codebase.
* Safe delete – Delete code and its usages in the code base.

## Guidelines

* Stay green
* Commit asap
* Refactor readability before design
    * Format
    * Rename
    * Remove
    * Extract
    * Reorder
* Change design (simple changes)
    * Extract private methods from deep conditionals.
    * Extract smaller private methods from long methods, and encapsulate cryptic code in private methods.
    * Return from methods as soon as possible.
    * Encapsulate where we find missing encapsulation.
    * Remove duplication.

## Deliberate practice: kata
[Tennis refactoring kata by Emily Bache](https://github.com/emilybache/Tennis-Refactoring-Kata)

---

## Parallel change (or expand, migrate and contract)
Technique by Joshua Kerievsky explained in 2010 in a talk called ["The Limited Red Society"](https://www.youtube.com/watch?v=6u0GknnOLnc).
Is a refactor pattern to implement breaking changes safely (staying on the green). It consists of three steps: expand, migrate and contract.

### Expand
Introduce new feature by adding new code instead of changing existing code. Introduce new methods instead of changing existing ones.
If the behavior from the outside is similar and only implementation changes, duplicate existing tests and point them to new code, leaving the existing tests untouched.
Ensure all new and old tests are working. Make sure to write new code using TDD practices.

### Migrate
Deprecate old code and allow clients to migrate to new expanded code, or change client code to point to new code.

### Contract
Once all client code is migrated to new code, remove old functionality by removing deprecated code and its tests.

## Deliberate practice: kata
[Parallel Change code by Pawel Duda and Carlos Blé](https://github.com/unclejamal/parallel-change)

[Kata Parallel Change by Coding is Caring](https://www.youtube.com/watch?v=qjBcyH21Alk)

