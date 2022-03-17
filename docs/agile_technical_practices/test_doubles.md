# Test Doubles

*"Functions that change state should not return values and functions that return values should not change state."*

Bertrand Meyer, Object-Oriented Software Construction

## Principles

* Instrument for isolating tests from third-party libraries.
* To attain good object-oriented design.
* Focusing on behavior instead of data.
* Think about object interactions early.
* Optimal object compositions.

### Command-Query Separation

Software interface abstraction is designed with two types of methods: command and query


#### Queries

* Answer the current state but must not modify the state before answering it.
    * Returns data.
    * NO side effects => idempotent.
    * Use *Stubs* for queries.

#### Command

* Side effects: modifies or mutates the state but do not answer about it.
    * It should return void.
    * Use *Mocks* for commands.

### Different types of Test Doubles

#### Dummy objects
* Needed to complete parameters.
* Never used.

#### Stubs
* Respond to calls.
* Pre-programmed outoput.
* Synthetic replacements.

#### Fake objects
* Handmade Stubs, *"poor man Stubs"*.

#### Mocks
* Expectations of the calls.
* Can throw exceptions.
* Confirm commands have been triggered.

#### Spies
* Handmade Mocks aka *"poor man Mocks"*

### Test Doubles guidelines

**Only use Test Doubles for classes that you own**

* How do we test the interaction with an external library?
    * Write a thin wrapper to implement the abstractions for the underlying infrastructure.
        * Are generated from a behavior-first position.
        * Can be substituted with Test Doubles.

* What if the external library changes? How can we test it?
    * Using integration testing.

#### Verify as little as possible in a test
* Avoid fragile tests.
* Write minimum code.
* Tell, don't ask.
* Specification should be as precise as possible, but no more precise.

#### Don’t use Test Doubles for isolated objects
If an object has no collaborations with other objects in the system, it does not need to be tested using Mock/Stub Objects.

#### Don’t add behavior in Test Doubles
* Not add any additional complexity.
* Behavior should be obvious and self-explanatory.

#### Only use Test Doubles for your immediate neighbors
* [Law of Demeter](https://en.wikipedia.org/wiki/Law_of_Demeter).
* Only one behavior at a time.
* One Subject Under Test at a time.
* Only on objects that are the nearest neighbors.

#### Too many Test Doubles
* Define and align responsabilities:
    * Split into intermediate class.
    * Break objects up.

#### CQS Principle trade-offs
Generally there are two kinds of possible violations of the CQS Principle:

* Returning a result for a command.
* Changing state for a query.

It is not always possible to handle the commands:

* throwing exceptions as a result of unsuccessful actions.
* returning http status codes in a request/response scenario.
