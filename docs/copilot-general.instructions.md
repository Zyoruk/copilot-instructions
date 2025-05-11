---
applyTo: '**'
---
Scope: Define broad rules for consistent and best-practice-driven code generation across the project.

### ESLint & Prettier Compliance
- All code must pass ESLint rules and be formatted with Prettier.
- Ensure suggestions follow project conventions (e.g., quotes, semicolons, trailing commas, spacing).
- Avoid introducing lint issues (e.g., unused imports or variables).
- Proper formatting and lint compliance streamline code reviews.

### Consistent Conventions
- Maintain consistent naming and coding conventions.
- Use clear, descriptive names (e.g., verbs for functions, nouns for classes).
- Follow existing patterns in the codebase (e.g., naming observables with `$`, adhering to folder structures).
- Prefer existing utilities or patterns over introducing new ones.

### Performance Mindset
- Prioritize performance and scalability in suggestions.
- Use efficient approaches (e.g., appropriate array methods, hashing for lookups).
- Avoid repetitive computations; cache results when needed.
- Handle large data sets gracefully (e.g., use pagination or slicing).

### Security Best Practices
- Avoid introducing security vulnerabilities.
- Validate and sanitize all input (client and server).
- Implement proper authorization checks (e.g., verify user permissions for sensitive actions).
- Use secure alternatives (e.g., bcrypt for password hashing, parameterized queries for DB operations, escaping HTML output).

### Documentation & Comments
- Generate JSDoc/TSDoc comments for functions and classes.
- Ensure public APIs have clear documentation.
- Add comments for non-obvious logic but avoid redundant ones.
- Strive for self-explanatory code with comments only for complex or critical sections.

### Using Experimental Features
- Avoid experimental or non-standard features unless explicitly required.
- If used, mark them with comments and provide fallbacks.
- Prefer stable APIs and libraries for long-term maintainability.

### AI Assistance Best Practices
- Use Copilot to boost productivity but always review its output.
- Treat suggestions as drafts that may need refinement.
- Test and verify AI-generated code as you would with peer-written code.

### Continuous Improvement
- Keep these instructions updated as the project evolves.
- Refine instructions if Copilot frequently suggests undesirable patterns.
- Align Copilot’s output with evolving best practices and standards.

### Future Categories
- Consider adding instruction sets for other scenarios (e.g., Commit Message Guidelines, Code Review Tips).
- Tailor additional categories to enhance consistency and efficiency across all development aspects.