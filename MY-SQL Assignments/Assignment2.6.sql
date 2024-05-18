/*Assignment 6: Draft a brief report on the use of transaction logs for data recovery and create a hypothetical scenario where a transaction
 log is instrumental in data recovery afte an unexpected shutdown.

 *Report on the Use of Transaction Logs for Data Recovery*

 *Introduction:*
 Transaction logs play a critical role in ensuring data integrity and facilitating data recovery in 
 database management systems. These logs record all transactions and changes made to the 
 database, providing a detailed history of database operations. In the event of an unexpected shutdown 
 or system failure, transaction logs are instrumental in restoring the database to a consistent state and minimizing data loss.
 
 *Importance of Transaction Logs for Data Recovery:*
 1. *Point-in-Time Recovery:* Transaction logs enable point-in-time recovery, 
 allowing database administrators to restore the database to a specific moment in time before the 
 failure occurred. This ensures that no committed transactions are lost, and the database can be recovered to a consistent state.
   
 2. *Undo and Redo Operations:* Transaction logs contain information about both 
 committed and uncommitted transactions. In the event of a system failure, undo 
 and redo operations can be applied to transactions recorded in the logs to roll 
 back incomplete transactions and reapply committed transactions, ensuring data consistency.
 
 3. *Minimization of Data Loss:* By continuously logging transactions, even in the 
 event of a system failure, transaction logs minimize data loss by preserving changes made to the database up 
 to the point of failure. This reduces the risk of data corruption and ensures that valuable data is not lost.
 
 *Hypothetical Scenario:*
 Consider a hypothetical scenario where a retail company experiences an unexpected server
  shutdown during a busy sales period. Several transactions were in progress, and the database was left in an inconsistent state. However, due to the presence of transaction logs, the database administrator can recover the database and minimize data loss.
 
 1. *Database Shutdown:* The unexpected server shutdown abruptly terminates ongoing transactions, 
 leaving the database in an inconsistent state. Some transactions were committed, while others were incomplete.
 
 2. *Transaction Log Analysis:* The database administrator analyzes the transaction logs to identify 
 the last committed transaction before the shutdown and the incomplete transactions that need to be rolled back.
 
 3. *Point-in-Time Recovery:* Using information from the transaction logs, the database administrator
  performs a point-in-time recovery to restore the database to the state it was in before the failure occurred.
 
 4. *Undo and Redo Operations:* The database administrator applies undo operations to roll back incomplete
  transactions that were recorded in the transaction logs. Then, redo operations are applied to reapply committed transactions and bring the database to a consistent state.
 
 5. *Database Restoration:* After completing the recovery process, the database is restored to a consistent 
 state, and normal operations can resume. The retail company can continue serving customers without experiencing 
 significant data loss or disruption to business operations.*/