# Vibe Coding Guide Makefile
.PHONY: help lint build test clean backup

help:
	@echo "Vibe Coding Guide - Available commands:"
	@echo "  help    Show this help message"
	@echo "  lint    Lint all markdown files (requires markdownlint-cli)"
	@echo "  build   Build placeholder"
	@echo "  test    Run placeholder tests"
	@echo "  clean   Clean generated artifacts"
	@echo "  backup  Run local backup script"

lint:
	@echo "Linting markdown files..."
	@command -v markdownlint >/dev/null 2>&1 || { echo "Please install markdownlint-cli first: npm install -g markdownlint-cli"; exit 1; }
	@markdownlint "**/*.md" --ignore node_modules

build:
	@echo "Building... (placeholder)"

test:
	@echo "Running tests... (placeholder)"

clean:
	@echo "Cleaning..."
	@rm -rf build/ dist/ .pytest_cache/

backup:
	@bash libs/common/utils/backups/backup.sh
