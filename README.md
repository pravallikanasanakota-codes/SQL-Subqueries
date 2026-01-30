#  Writing Subqueries (Nested Queries)

## 📌 Objective
To understand and implement SQL subqueries in different clauses and analyze their behavior.

## 🛠 Tools Used
- MySQL Workbench  
- Alternatives: PostgreSQL, BigQuery Sandbox  

## 📚 Concepts Covered
- Non-correlated subqueries
- Correlated subqueries
- Subqueries in WHERE, SELECT, and FROM clauses
- Subquery vs JOIN comparison
- Handling multiple-row subqueries
- Debugging subquery errors

## 🧪 What I Did
1. Created an `employees` table with salary data.
2. Used subqueries to find employees earning more than average salary.
3. Implemented subqueries in SELECT, FROM, and WHERE clauses.
4. Practiced correlated subqueries based on department salary.
5. Compared subqueries with JOIN-based solutions.
6. Debugged common subquery mistakes.

## ❓ Interview Questions & Answers

### 1. What is a subquery?
A subquery is a query written inside another SQL query.

### 2. Difference between correlated and non-correlated subqueries?
| Non-Correlated | Correlated |
|---------------|------------|
| Runs once | Runs for each row |
| Independent | Depends on outer query |
| Faster | Slower |

### 3. Can subqueries return multiple rows?
Yes, but they must be used with operators like IN, ANY, or ALL.

### 4. Subquery vs JOIN – which is better?
JOINs are generally faster, but subqueries are useful when logic is complex or unavoidable.

### 5. Where are subqueries commonly used?
- Filtering conditions
- Aggregation logic
- Data validation
- Reporting queries

## ✅ Final Outcome
This task improved my understanding of advanced SQL nesting, execution flow, and real-world query design.
