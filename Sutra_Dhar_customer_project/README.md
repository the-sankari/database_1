# Customer Database Management

This repository contains SQL scripts for managing the **customerdb** database, focusing on the `customer` table. These scripts facilitate the creation of the database, definition of the table schema, insertion of initial data, and execution of various operations on customer records.

## Files

- **Sutra_Dhar_customer_createStatement.sql**: This script initializes the database, creates the `customer` table, inserts initial data, and creates a new user with necessary privileges for database access.

- **Sutra_Dhar_customer_sqlStatements.sql**: This script contains SQL statements for inserting additional data into the `customer` table and performing various queries, updates, and deletions on customer records.

## Setup Instructions

1. Ensure you have a MySQL server installed and running.
2. Connect to your MySQL server using a client like MySQL Workbench or the command line.
3. Execute the `Sutra_Dhar_customer_createStatement.sql` script to create the database, table, initial data, and user with appropriate privileges.
4. Execute the `Sutra_Dhar_customer_sqlStatements.sql` script to further interact with the `customer` table by inserting new data, querying existing data, updating records, and deleting entries.

## Usage

- **Querying Data**: Use `SELECT` statements to retrieve information from the `customer` table based on specific criteria.
- **Updating Records**: Utilize `UPDATE` statements to modify existing records in the `customer` table.
- **Deleting Entries**: Use `DELETE` statements to remove unwanted records from the `customer` table.

## Important Notes

- Ensure proper permissions are set for database users to execute the provided scripts.
- Double-check SQL statements for accuracy, especially when performing operations that modify or delete data.
- Back up your data before executing any potentially destructive SQL commands.

## Contributors

- Kajol Sutra Dhar

