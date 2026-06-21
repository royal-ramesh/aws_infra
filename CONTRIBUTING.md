# Contributing Guidelines

Thank you for your interest in contributing to this project.

## Getting Started

1. Fork the repository (if public) or request collaborator access (if private).
2. Clone the repository locally.
3. Create a feature branch from the latest develop branch.

Example:

git checkout develop

git pull origin develop

git checkout -b feature/my-feature

## Development Standards

* Follow Terraform best practices.
* Use meaningful variable names.
* Include documentation for all modules.
* Ensure code passes validation before submission.
* Avoid committing secrets, passwords, or sensitive information.

## Commit Message Format

Examples:

feat: add aurora cluster module

fix: resolve subnet route association issue

docs: update deployment guide

refactor: simplify vpc module outputs

## Pull Request Process

1. Push your feature branch.
2. Create a Pull Request against develop.
3. Provide a clear description of the changes.
4. Include testing evidence if applicable.
5. Wait for review and approval.

## Code Review Requirements

* At least one maintainer approval is required.
* All automated checks must pass.
* Direct pushes to main are prohibited.

## Branch Strategy

main

* Production-ready code.

develop

* Integration branch.

feature/*

* New features.

bugfix/*

* Bug fixes.

hotfix/*

* Critical production fixes.

## Contributor Agreement

By submitting a contribution, you agree that your contribution becomes part of this project and may be modified, distributed, or relicensed by the repository owner.
