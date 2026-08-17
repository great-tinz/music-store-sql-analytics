USE Chinook;

-- =====================================================================
-- 05 - EMPLOYEE ORGANISATION
-- The staff table uses a SELF-REFERENCING key: Employee.ReportsTo
-- points back to Employee.EmployeeId (a manager is also an employee).
-- This is the classic "who reports to whom" recursive join.
-- RULES: write each query YOURSELF, predict the row count before
-- running, then explain the result.
-- =====================================================================

-- Q1: How many employees does the company have in total?

-- Q2: List each employee with their direct manager's name.
--     (NOTE: the CEO has no manager - ReportsTo is NULL.)

-- Q3: Which employees report directly to the CEO? (top of the tree)

-- Q4: Who are the managers (people who have at least one report)?

-- Q5: How many people does each manager directly supervise?

-- Q6: Who has NO one reporting to them? (the "bottom" of the tree)

-- Q7: How deep is the organisation? (longest chain: CEO -> ... -> leaf)
--     BONUS: try writing it with a recursive CTE on your own first.
