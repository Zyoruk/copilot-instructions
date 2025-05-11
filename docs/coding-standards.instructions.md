---
applyTo: '**'
---
Scope: Define coding standards and best practices for all code contributions.

### Core Principles
- **KISS (Keep It Simple, Stupid):** Favor simple, straightforward solutions. Avoid unnecessary complexity.
- **DRY (Don't Repeat Yourself):** Eliminate code duplication by reusing logic and abstractions.
- **YAGNI (You Aren't Gonna Need It):** Only implement features and abstractions when they are actually needed.
- **SOLID Principles:**
  - Single Responsibility Principle
  - Open/Closed Principle
  - Liskov Substitution Principle
  - Interface Segregation Principle
  - Dependency Inversion Principle

### Design Patterns
- Use Gang of Four (GoF) design patterns (e.g., Singleton, Factory, Observer, Strategy) when they provide clear benefits.
- Avoid overengineering; only apply patterns when they solve real problems in the codebase.

### General Coding Rules
- Write self-explanatory, maintainable code.
- Prefer composition over inheritance unless inheritance is clearly justified.
- Document non-obvious logic and architectural decisions.
- Ensure all code is testable and covered by automated tests where practical.
- Follow Clean Code principles:
  - Use meaningful, descriptive names for variables, functions, and classes.
  - Keep functions and methods short and focused on a single responsibility.
  - Avoid deep nesting; return early when possible.
  - Remove dead code, unused variables, and commented-out code.
  - Limit the number of function parameters; prefer objects for complex data.
  - Write small, cohesive classes and modules.
  - Favor readability over cleverness or brevity.
  - Use consistent formatting and style throughout the codebase.
  - Refactor code regularly to improve clarity and maintainability.
