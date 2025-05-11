---
applyTo: '**/*.ts'
---
Scope: Use these instructions when generating Angular components, services, or modules for the frontend.

### Structure & Style
- Follow Angular’s official style guide for project structure.
- Organize code into cohesive modules and components.
- Use clear and descriptive names for files and classes (e.g., `user-profile.component.ts`, `user.service.ts`).
- Keep components focused on presentation (HTML/CSS and minimal logic), while services handle data fetching and complex logic.
- Leverage TypeScript features like interfaces and types to define data structures from the backend, ensuring strong typing throughout the app.

### API Integration
- Use Angular’s `HttpClient` within injectable services to interact with the backend API.
- Avoid calling `HttpClient` directly in components. Instead, create service methods (e.g., `CustomerService.getCustomers()`) that return Observables.
- Components should subscribe to these Observables or use the `async` pipe for data binding. This separation improves maintainability and testability.

### Reactive Patterns
- Utilize RxJS for managing asynchronous data.
- Use Observables and the `async` pipe in templates to handle subscriptions automatically.
- When manual subscriptions are necessary, ensure proper cleanup by unsubscribing in `ngOnDestroy` or using operators like `takeUntil`. This prevents memory leaks and ensures stability during navigation.

### Performance Optimizations
- Apply best practices to maintain a responsive frontend.
- Use `ChangeDetectionStrategy.OnPush` for components that rely only on input properties or immutable data to minimize unnecessary change detection.
- For lists, always use `trackBy` with `*ngFor` to optimize rendering.
- Avoid performing expensive calculations in templates; instead, compute them beforehand or use memoized pipes.

### UI Consistency
- Adhere to the project's UI/UX standards.
- Use the designated component library (e.g., Angular Material) for a consistent look and feel. For example, prefer `<mat-table>` over raw HTML tables.
- Use Angular’s Reactive Forms or Template-driven Forms consistently (Reactive Forms are preferred for complex forms).
- Always provide validation messages and use Angular’s validation states (e.g., `ngClass` or `MatFormField` appearance) to guide users.

### Error Handling & User Feedback
- Handle service call errors gracefully.
- Use RxJS `catchError` in services to transform errors into user-friendly messages or perform global error handling (e.g., redirect to login on 401 errors).
- In components, display error messages (e.g., toast notifications or banners) and provide feedback during long operations (e.g., spinners or disabled buttons).

### Clean Code & Linting
- Write clean, maintainable code that passes all lint checks.
- Avoid using the `any` type; define proper interfaces for data.
- Remove debugging code (e.g., `console.log`) from production paths.
- Keep component methods concise and focused.
- Refactor complex logic into services or smaller child components.
- Maintain consistent formatting using tools like Prettier, following the project’s configuration.

### Testing
- Write or update `.spec.ts` files for components and services.
- Tests should cover component logic (e.g., data binding, service method calls) and service logic (e.g., `HttpClient` interactions and response handling).
- Use Angular’s `TestBed` for isolated test environments.
- While not mandatory for every change, prioritize tests for critical functionality.
