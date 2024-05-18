/*Assignment 3: Explain the ACID properties of a transaction in your own words. Write SQL statements to simulate a transaction that includes locking and demonstrate different Jisolation levels to show concurrency control.

### ACID Properties of a Transaction:

- *Atomicity:* Ensures that a transaction is treated as a single unit of work, either all of its operations are completed successfully or none are.
- *Consistency:* Guarantees that the database remains in a consistent state before and after the transaction.
- *Isolation:* Ensures that the execution of multiple transactions concurrently does not interfere with each other.
- *Durability:* Once a transaction is committed, its changes are permanent and will not be lost even in the event of a system failure.*/

BEGIN TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

COMMIT;
/*### Demonstrating Different Isolation Levels for Concurrency Control:

1. *Read Uncommitted (Level 0):*
   - Allows dirty reads, meaning a transaction can read uncommitted changes from other transactions.
   - Set isolation level:*/
 SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

/*2. *Read Committed (Level 1):*
   - Prevents dirty reads but allows non-repeatable reads.
   - Set isolation level:*/
 SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

/*3. *Repeatable Read (Level 2):*
   - Ensures a transaction sees a consistent snapshot of the database, preventing non-repeatable reads.
   - Set isolation level: */
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

/*4. *Serializable (Level 3):*
   - Provides the highest level of isolation, preventing all anomalies but can lead to more blocking.
   - Set isolation level:*/
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;