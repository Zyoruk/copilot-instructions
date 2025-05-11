---
applyTo: '**/*.ts'
---
Scope: Use these instructions when writing or generating backend code for a NestJS application with TypeORM and PostgreSQL.

### Architecture & Structure
- Follow NestJS's modular architecture. Organize code into modules, controllers, and providers (services).
- Keep controllers focused on routing and input/output handling, while placing business logic in injectable services.
- Use NestJS dependency injection (via constructors) to access repositories or services instead of creating instances manually.

### DTOs & Validation
- Use Data Transfer Object (DTO) classes to define request/response shapes.
- Apply `class-validator` decorators (e.g., `@IsString`, `@IsEmail`) in DTOs and enable NestJS's `ValidationPipe` for automatic validation of incoming data.
- This ensures robust schema validation and cleaner controller logic.

### Guards & Authorization
- Use NestJS Guards for authentication and authorization.
- Apply `AuthGuard('jwt')` for protected routes and create custom role-based guards when needed.
- Avoid manual checks in controllers to maintain consistent and reusable security logic.

### Swagger Documentation
- Document API endpoints using Swagger decorators from `@nestjs/swagger`.
- Use `@ApiTags` to categorize controllers, `@ApiOperation` to describe endpoints, and `@ApiResponse` (or `@ApiOkResponse`, `@ApiCreatedResponse`, etc.) to document expected responses.
- Annotate DTO properties with `@ApiProperty` for clear schema documentation, ensuring the API is well-documented for consumers.

### Error Handling
- Use NestJS `HttpException` classes (e.g., `BadRequestException`, `NotFoundException`) or `HttpException` with appropriate status codes for error cases.
- Avoid vague error messages or `console.error` in production.
- Ensure global exception filters or default error handling catch these exceptions and format responses properly.

### Performance
- Optimize backend performance by avoiding blocking operations in the request cycle.
- Use asynchronous calls and offload heavy computations to background jobs or scheduled tasks.
- Prevent N+1 query issues by using relations or joins in TypeORM.
- Implement caching (e.g., `CacheModule` or in-memory cache) for frequently requested data when appropriate.

### Clean Code
- Write clear, maintainable code. Follow ESLint and Prettier configurations for consistent formatting and naming conventions.
- Use camelCase for variables, PascalCase for classes, and avoid anti-patterns flagged by the linter.
- Add comments for complex logic and break down large functions into smaller ones.
- Ensure each function or method has a single, well-defined purpose (Single Responsibility Principle).

### NestJS Features
- Leverage NestJS abstractions for cleaner code.
- Use Interceptors for cross-cutting concerns (e.g., logging, response transformation), Pipes for data transformation/validation, and Middleware for low-level request handling (e.g., authentication, body parsing).
- For complex applications, consider the CQRS pattern (with `@nestjs/cqrs`) to separate command and query logic.

### Testing
- Include unit tests for new services or controllers where possible.
- Use NestJS testing utilities (e.g., `Test.createTestingModule`) with Jest to test service logic in isolation by mocking database calls or other dependencies.
- While not mandatory, tests improve reliability and ensure new features are covered by automated tests.

### Database (PostgreSQL & TypeORM)
- Follow best practices for database interactions.
- Use TypeORM's repository pattern for queries and transactions.
- Define entities with proper relationships and constraints.
- Optimize queries to avoid performance bottlenecks and ensure data integrity.
