# Personal-Finance-Tracking-Project
Using MySQL Workbench and MySQL Server builds Financial Tracking Report

# Personal Finance Tracker

A budget tracking SQL database project for managing personal finances by tracking income, expenses, and categories, and generating useful monthly financial reports.

---

## Project Objective

Build a robust budget tracking system using SQL (MySQL) to:
- Store and organize users’ income and expenses.
- Categorize transactions into income and expense types.
- Summarize monthly spending by category and user.
- Track balances through database views.
- Enable exporting monthly financial reports.

---

## Tools

- MySQL 8.0+
- SQL queries for schema creation, insertion, querying, and view creation

---

## Database Schema

Your SQL database consists of four core tables:

| Table      | Description                              |
|------------|------------------------------------------|
| `Users`     | Stores user info including name, email, and registration date. |
| `Categories`| Stores categories for transactions, categorized as 'Income' or 'Expense'. |
| `Income`    | Records income transactions linked to users and categories. |
| `Expenses`  | Records expense transactions linked to users and categories. |

---

### Schema Creation SQL (Summary)

CREATE DATABASE Finance_Tracking;
USE Finance_Tracking;

CREATE TABLE Users (
User_ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100),
Email VARCHAR(100) UNIQUE,
Password VARCHAR(100),
Created_At DATE DEFAULT(current_date())
);

CREATE TABLE Categories (
Category_ID INT PRIMARY KEY AUTO_INCREMENT,
Category_Name VARCHAR(50),
Type ENUM('Income', 'Expense')
);

CREATE TABLE Income (
Income_ID INT PRIMARY KEY AUTO_INCREMENT,
User_ID INT,
Category_ID INT,
Amount DECIMAL(10, 2),
Income_Date DATE,
Description TEXT,
FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

CREATE TABLE Expenses (
Expense_ID INT PRIMARY KEY AUTO_INCREMENT,
User_ID INT,
Category_ID INT,
Amount DECIMAL(10, 2),
Expense_Date DATE,
Description TEXT,
FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);


---

## Dummy Data

- Inserted sample users, categories, income, and expense transactions for testing and analysis.
- Categories cover typical income sources (Salary, Freelancing, Dividends) and common expense types (Food, Rent, Utilities).

---

## Key Queries

### Monthly Expense Summary per User

SELECT
u.User_ID,
u.Name,
DATE_FORMAT(e.Expense_Date, '%Y-%m') AS Month,
SUM(e.Amount) AS Total_Monthly_Expenses
FROM Expenses e
JOIN Users u ON e.User_ID = u.User_ID
GROUP BY u.User_ID, Month
ORDER BY u.User_ID, Month;


### Category-wise Expense Summary per User by Month

SELECT
u.User_ID,
u.Name,
c.Category_Name,
DATE_FORMAT(e.Expense_Date, '%Y-%m') AS Month,
SUM(e.Amount) AS Category_Total
FROM Expenses e
JOIN Users u ON e.User_ID = u.User_ID
JOIN Categories c ON e.Category_ID = c.Category_ID
WHERE c.Type = 'Expense'
GROUP BY u.User_ID, c.Category_Name, Month
ORDER BY u.User_ID, Month;


---

## Views

### `User_Balance`

A view to calculate total income, total expenses, and balance (income - expenses) for each user.

CREATE VIEW User_Balance AS
SELECT
u.User_ID,
u.Name,
IFNULL(SUM(i.Amount), 0) AS Total_Income,
IFNULL(SUM(e.Amount), 0) AS Total_Expense,
IFNULL(SUM(i.Amount), 0) - IFNULL(SUM(e.Amount), 0) AS Balance
FROM Users u
LEFT JOIN Income i ON u.User_ID = i.User_ID
LEFT JOIN Expenses e ON u.User_ID = e.User_ID
GROUP BY u.User_ID;


---

## Reverse Engineering Diagram

To help visualize the database structure, I have included a reverse engineering screenshot of my MySQL database schema. It shows the tables, their columns, data types, and relationships (primary keys and foreign keys).


---

## How to Run

1. Load the database schema and dummy data by executing the full SQL script in your MySQL environment.
2. Use the provided queries to retrieve financial summaries.
3. Create and query the `User_Balance` view to track users' financial balances.
4. Export results as needed for reporting.

---

## Future Enhancements

- Implement user authentication and encryption for password security.
- Add transaction editing and deletion functionality.
- Build a front-end dashboard to visualize spendings and income.
- Add automated monthly report generation and email delivery.
- Integrate budget goals and alerts.

---

*Happy budgeting and financial tracking!*
