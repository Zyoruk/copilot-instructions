---
applyTo: '**'
---
Scope: Use these instructions for code involving database access, TypeORM entities, and SQL queries.

### Entity Design
- Define the database schema using TypeORM entities.
- Use explicit columns with correct data types (aligned with PostgreSQL types).
- Define relationships using decorators like `@OneToMany`, `@ManyToOne`, etc., instead of manual foreign key fields.
- Add constraints such as `@Unique` or `@Index` for data integrity and query performance.

### Efficient Queries
- Optimize queries using TypeORM’s `QueryBuilder` or repository methods.
- Avoid retrieving all records and filtering in memory; use `findOne`, `find`, or `leftJoinAndSelect` (or the `relations` option) to fetch related entities in a single query.
- Select only the required fields (avoid `SELECT *` or loading entire entities unnecessarily).
- Prevent N+1 query issues by eagerly fetching required relations or using joins.

### Transactions
- Use transactions for multi-step operations that must succeed or fail together.
- Leverage TypeORM’s transaction support (e.g., `manager.transaction` with an async callback or `QueryRunner` for explicit control).
- Ensure all related database operations are grouped into a single transaction for consistency.

### Raw SQL Safety
- Always parameterize raw SQL queries to prevent SQL injection.
- Use TypeORM’s query builder parameters or the `query` method with parameter arrays.
- Avoid directly inserting user input into query strings.

### Indexing & Caching
- Index frequently filtered or joined columns in PostgreSQL (use `@Index` on entity fields as needed).
- For heavy, frequently-run queries, consider TypeORM’s second-level caching or in-memory caching.
- Mention cache invalidation strategies if cached data changes.

### Migrations
- Avoid auto-synchronization in production; use migrations for schema changes.
- When modifying entities, generate a corresponding TypeORM migration to keep the schema in sync.
- Ensure migrations are idempotent and include clear comments explaining their purpose.

### Connection Management
- Use the existing TypeORM connection provided by NestJS (`TypeOrmModule.forRoot/forFeature`).
- Avoid opening arbitrary new connections in application code.
- When using raw queries or `QueryRunner`, release resources properly to prevent memory or connection leaks.

### Data Integrity
- Use PostgreSQL and TypeORM to enforce data integrity.
- Define foreign keys (via relations) and non-null columns as needed.
- Handle exceptions like unique constraint violations gracefully (e.g., catch `QueryFailedError` for duplicate keys and return clear error messages).
