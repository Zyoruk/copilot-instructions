[![Deploy static content to Pages](https://github.com/Zyoruk/copilot-instructions/actions/workflows/static.yml/badge.svg)](https://github.com/Zyoruk/copilot-instructions/actions/workflows/static.yml)

# Copilot Instructions

Structured instructions and best practices for using GitHub Copilot effectively across various technologies.

- **Docsify-powered documentation**: [View the docs](https://zyoruk.github.io/copilot-instructions/#/)
- Covers: Angular, NestJS, database, and testing workflows
- Includes: Coding standards, releasing, and security guidelines

## Getting Started

1. Clone the repository:
   ```sh
   git clone https://github.com/Zyoruk/copilot-instructions.git
   ```
2. Install dependencies (for release tooling):
   ```sh
   npm install
   ```
3. To view the documentation locally, install Docsify globally and run:
   ```sh
   npm install -g docsify-cli
   docsify serve .
   ```

## Documentation Structure

- All instructions are in the `docs/` directory, organized by topic.
- Main entry: [`index.html`](index.html)
- Sidebar navigation: [`_sidebar.md`](_sidebar.md)

## Release

Release management uses [standard-version](https://github.com/conventional-changelog/standard-version):

```sh
npm run release
```

## License

MIT © Zyoruk
