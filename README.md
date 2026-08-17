# Music Store SQL Analytics

Analyzing a real music store database with MySQL. Every query answers a
real business question - revenue by genre, best-selling artists, customer
spending, and more - the way an actual data analyst would write it.

## What is Chinook?

Chinook is a sample database of a digital music store (artists, albums,
tracks, customers, invoices, playlists). It has **11 tables** and a few
hundreds of thousands of rows of realistic sales data. This repo uses the
official Chinook 1.4.5 MySQL dump.

## The 11 tables

| Table          | What it holds                              |
|----------------|--------------------------------------------|
| `Artist`       | Artists in the catalog                     |
| `Album`        | Albums (each belongs to one artist)        |
| `Track`        | Songs (each belongs to one album + genre)  |
| `Genre`        | Music genres (Rock, Metal, Jazz, ...)      |
| `MediaType`    | File formats (MPEG, AAC, ...)              |
| `Playlist`     | User-created playlists                     |
| `PlaylistTrack`| Junction table: which tracks are in which playlist (M:N) |
| `Customer`     | People who buy music                       |
| `Employee`     | Staff. **Self-referencing**: `ReportsTo` points to `EmployeeId` (a manager is also an employee) |
| `Invoice`      | One purchase transaction                   |
| `InvoiceLine`  | One track on one purchase                  |

### Relationship map

```
Artist 1---* Album 1---* Track *---1 Genre
                            |
                            *---1 MediaType

Customer 1---* Invoice 1---* InvoiceLine *---1 Track
Customer *---1 Employee (SupportRep)
Employee *---1 Employee (ReportsTo - self join)
Playlist 1---* PlaylistTrack *---1 Track
```

### Data model (ER diagram)

Official Chinook entity-relationship diagram, showing all 11 tables and
how they connect.

![Chinook ER diagram](chinook-er-diagram.png)

## How to run

1. Create the database in MySQL Workbench:
   ```
   SOURCE 'path/to/data/Chinook_MySql.sql';
   ```
   This drops/recreates the `Chinook` database with all 11 tables populated.
2. Open any file in `queries/` and run the queries.

## Project structure

```
music-store-sql-analytics/
├── data/
│   └── Chinook_MySql.sql        # builds the whole database
├── queries/
│   ├── 01_catalog_insights.sql  # artists, albums, tracks, genres
│   ├── 02_sales_revenue.sql     # revenue by genre/artist/month
│   ├── 03_customer_insights.sql # spending, countries, loyalty
│   ├── 04_invoice_operations.sql# invoices, lines, markets
│   ├── 05_employee_org.sql      # recursive ReportsTo self-join
│   └── 06_business_questions.sql# free-form analyst questions
├── data_analysis/
│   ├── exports/                 # SQL results saved as CSVs
│   └── scripts/                 # (coming later) pandas analysis
├── chinook-er-diagram.png       # official Chinook ER diagram
├── README.md
└── PROGRESS.md                  # learning log with predictions & mistakes
```

## Skills covered

### SQL

- SELECT / WHERE / filters
- ORDER BY, LIMIT
- GROUP BY with aggregate functions (COUNT, SUM, AVG, MIN, MAX, ROUND)
- JOINs (INNER, LEFT), self-joins, subqueries, CTEs
- UNION, DISTINCT, HAVING, recursive CTEs
- Reading a schema to answer business questions

### Data Analysis

- Turning business questions into SQL queries
- Extracting query results into CSV datasets (Excel-ready)
- (In progress) pandas: cleaning, exploration, visualization
