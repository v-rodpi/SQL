# SQL Practice

A collection of SQL practice scripts and exercises using the **Northwind** sample database.

## Repository Structure

```
.
├── database/
│   └── Northwind.db
├── scripts/
│   └── revenue_by_product.sql
│   └── best-selling_products.sql
└── README.md
```

## About

This repository contains SQL queries and exercises completed while practicing SQL concepts.

The scripts focus on topics such as:

- SELECT statements
- Filtering and sorting
- Aggregations
- GROUP BY
- Subqueries
- Joins
- Common Table Expressions (CTEs)
- Window Functions

More exercises will be added as I continue learning and practicing.

## Requirements

- DB Browser for SQLite (or any SQLite-compatible client)
- `Northwind.db` included in this repository

## Running the Scripts

1. Open `database/Northwind.db` in your preferred SQLite client.
2. Open any script from the `scripts/` directory.
3. Execute the query.

## Current Exercises

| Script | Description |
|---------|-------------|
| `revenue_by_product.sql` | Calculates the total units sold and revenue generated for each product using subqueries. |
| `best-selling_products.sql` | Calculates the best-selling products compared to the average of total products sold using subqueries. |


## License

This repository is intended for learning and practice purposes.
