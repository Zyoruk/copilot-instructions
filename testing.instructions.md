---
applyTo: '**/*spec.ts'
---
### Scope
Use these instructions to guide the generation of unit tests or when reviewing code for quality. These apply to both backend and frontend testing.

### Unit Test Structure
- Follow the **Arrange-Act-Assert** pattern when generating tests.
- **Backend (NestJS)**: Use Jest. Set up a Nest testing module with required providers or mocks (e.g., mock repositories for services).
- **Frontend (Angular)**: Use Jasmine with TestBed to configure components and dependencies.
- Each test case should:
    - Arrange necessary preconditions.
    - Perform one action.
    - Assert the outcome.

### Test Coverage
- Focus on important business logic and edge cases.
- Generate tests for:
    - Normal expected cases.
    - Error or edge cases.
- Examples:
    - **NestJS Service**: Test when a repository returns expected data, throws an error, or returns empty results.
    - **Angular Component**: Test rendering with specific `@Input` values and behavior when a service call fails (e.g., showing an error message).

### Isolation and Mocking
- Keep tests independent of external systems.
- Use mocks or stubs for interactions with databases, APIs, or other services:
    - **NestJS**: Mock TypeORM repositories using Jest (e.g., `jest.spyOn(repository, 'find').mockResolvedValue([...])`).
    - **Angular**: Use Jasmine spies or `HttpTestingController` to simulate HTTP responses.
- Ensure tests run quickly and reliably in any environment.

### Clear Assertions
- Use clear and appropriate assertions:
    - Prefer `toEqual` or `toStrictEqual` for object comparisons over `toBe`.
    - Assert both return values and side effects (e.g., repository method calls or emitted events).
- Each test should ideally verify one logical outcome.

### Test Naming and Organization
- Name test suites and cases descriptively:
    - Use `describe` blocks to group tests by unit (e.g., service or component) and method/scenario.
    - Example: 
        ```typescript
        describe('UserService', () => {
            describe('getUsers', () => {
                it('should return a list of users', async () => { ... });
            });
        });
        ```
- This ensures test reports are easy to understand.

### Maintainability
- Avoid brittle test logic:
    - Don’t hard-code values likely to change unless explicitly testing them.
    - Use helper functions or factory methods to create test data and reduce duplication.
- Ensure tests are deterministic (outcomes should not rely on random data or timing).

### Continuous Integration
- Remember that the CI/CD pipeline runs tests and enforces coverage thresholds.
- When generating new code, ensure corresponding tests are created or updated to maintain high coverage.
- Treat testing as an integral part of development, not an afterthought.

### Quality Checks
- During code reviews (manual or automated):
    - Verify that Copilot-generated code adheres to standards.
    - Ensure new modules or critical functions have corresponding tests.
    - Confirm that linting and formatting are applied (Copilot should not output code that fails lint checks).
- Integrate quality assurance into the development process to catch issues early.