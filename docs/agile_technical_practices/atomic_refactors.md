# Atomic refactors

There are five atomic refactors that can be applied to methods, functions, classes, variables, etc.

* Rename – Change the name of classes, methods, variables….
* Extract – Extract a class (or methods or variables…), creating a new abstraction.
* Inline – The inverse of extract – inline a method (or variable), deconstructing an abstraction.
* Move – Move a class (or methods or variables…) to some other place in the codebase.
* Safe delete – Delete code and its usages in the code base.

## Guidelines

* Stay in the green while refactoring
* Commit as often as possible
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
