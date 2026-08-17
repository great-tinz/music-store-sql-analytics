# PROGRESS - Music Store SQL Analytics

Single source of truth for this project. Updated after every session.

## Status

| Step | Status |
|------|--------|
| Database loaded (Chinook created) | Pending |
| 01 - Catalog Insights | Pending |
| 02 - Sales Revenue | Pending |
| 03 - Customer Insights | Pending |
| 04 - Invoice Operations | Pending |
| 05 - Employee Org (self-join + CTE) | Pending |
| 06 - Business Questions | Pending |
| CSV exports started | Pending |
| pandas scripts (when started) | Pending |

## Session log

### Session 1 - Setup
- [x] Cloned repo `music-store-sql-analytics`
- [x] Fixed nested-folder mistake (repo was cloned one level too deep)
- [x] Created project structure: `data/`, `queries/`, `data_analysis/`
- [x] Added `Chinook_MySql.sql` (v1.4.5, 11 tables confirmed)
- [x] Wrote the 6 query files, README, PROGRESS

**Next:**
- Load the database: `SOURCE 'data/Chinook_MySql.sql';`
- Verify row counts: `SELECT COUNT(*)` on all 11 tables
- Start `01_catalog_insights.sql`

## Rules I follow

1. Always predict the row count BEFORE running a query.
2. Write queries by hand - no copying.
3. When I get it wrong, record the mistake + the WHY here.
4. No `SELECT *` - every column must be intentional.
5. Push to GitHub only when I say "push it".
