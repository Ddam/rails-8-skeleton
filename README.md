# README

This is a skeleton project for Rails 8.

## Overview

This project provides configurations for Visual Studio Code, including devcontainer settings for using the project through Docker. It also includes basic settings and configurations for various VS Code extensions installed with the devcontainer.

## Features

- **Devcontainer Configuration**: Easily set up and run the project in a Docker container.
- **VS Code Extensions**: Pre-configured extensions for a seamless development experience.
- **Linters**: Includes basic linters such as ESLint, ERB-Lint, Standard, and RuboCop for Ruby and Rails.
- **Typescript support**: Provides support for TypeScript, enabling static type checking and modern JavaScript features.
- **Testing Library**: Utilizes RSpec for testing.
- **Vite**: Replace asset pipeline and JSBundling / Importmap by Vite

## Getting Started

1. **Clone repository**:
   ```sh
   git clone https://github.com/your-username/rails-8-skeleton.git
   cd rails-8-skeleton
   ```
2. **Open project in Visual Studio Code**:
3. **Configure devcontainer**:
   - Rename `.devcontainer/devcontainer.json.example` to `.devcontainer/devcontainer.json`.
   - Add path to your `docker-compose.yml` file in devcontainer configuration.
4. **Open the project in the development container**:
   - Go to action `Dev Containers: Open Folder in Container...` in VS Code.
5. **Install dependencies**:
   - Once inside container, install project dependencies:
     ```sh
     bundle install
     yarn install
     ```

## VS Code Extensions

- **shopify.ruby-lsp**: Provides language server protocol support for Ruby, enhancing code navigation and completion.
- **shanehofstetter.rails-open-partial**: Allows you to quickly open Rails partials from their references in views.
- **gurgeous.bust-a-gem**: Helps manage Ruby gems within your project.
- **kaiwood.endwise**: Automatically adds "end" keywords in Ruby code.
- **koichisasada.vscode-rdbg**: Integrates Ruby debugger into VS Code.
- **github.copilot**: AI-powered code completion and suggestions.
- **github.copilot-chat**: Chat interface for GitHub Copilot.
- **xyz.local-history**: Maintains a local history of your files.
- **cweijan.vscode-database-client2**: Database client for managing and querying databases.
- **cweijan.dbclient-jdbc**: JDBC driver support for the database client.
- **mikestead.dotenv**: Support for `.env` files, providing syntax highlighting and validation.
- **connorshea.vscode-ruby-test-adapter**: Integrates Ruby test frameworks with VS Code's testing UI.
- **cjay.ruby-and-rails-snippets**: Provides snippets for Ruby and Rails development.
- **aki77.rails-db-schema**: Enhances navigation and visualization of Rails database schema.
- **aki77.rails-routes**: Provides quick access to Rails routes.
- **shanehofstetter.rails-i18n**: Adds support for Rails internationalization (i18n).
- **aliariff.vscode-erb-beautify**: Beautifies ERB (Embedded Ruby) templates.
- **manuelpuyol.erb-linter**: Lints ERB templates for syntax and style issues.
- **esbenp.prettier-vscode**: Integrates Prettier, an opinionated code formatter.
- **dbaeumer.vscode-eslint**: Integrates ESLint for JavaScript linting and code quality checks.
- **bradlc.vscode-tailwindcss**: Provides support for Tailwind CSS, including IntelliSense and syntax highlighting.

These extensions are pre-configured to provide a smooth and efficient development experience with Rails 8.

## Linters / Formatting

- **ESLint**: For JavaScript linting.
- **ERB-Lint**: For linting ERB templates.
- **Prettier**: For Javascript and Typescript formatting.
- **Standard** & **RuboCop**: For Ruby and Rails linting.

## Testing

- **RSpec**: The testing library used in this project.

Enjoy developing with this Rails 8 skeleton project!
