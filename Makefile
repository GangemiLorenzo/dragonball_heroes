# Flutter Dragon Ball Challenge Makefile

.PHONY: help build-runner build-runner-watch clean get packages upgrade analyze format test build-dev build-staging build-prod

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-20s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Build Runner Commands
build-runner: ## Run build runner once
	dart run build_runner build

build-runner-watch: ## Run build runner in watch mode
	dart run build_runner watch

build-runner-clean: ## Clean build runner cache and rebuild
	dart run build_runner clean
	dart run build_runner build

# Localization Commands
gen-l10n: ## Generate localizations
	flutter gen-l10n

gen-l10n-watch: ## Generate localizations in watch mode
	flutter gen-l10n --watch

# Flutter Commands
get: ## Get dependencies
	flutter pub get

packages: get ## Alias for get

upgrade: ## Upgrade dependencies
	flutter pub upgrade

clean: ## Clean build artifacts
	flutter clean
	flutter pub get

# Code Quality
analyze: ## Run dart analyzer
	dart analyze

format: ## Format code
	dart format .

format-check: ## Check code formatting
	dart format --set-exit-if-changed .

# Testing
test: ## Run tests
	flutter test

test-coverage: ## Run tests with coverage
	flutter test --coverage

# Build Commands
build-dev: ## Build development APK
	flutter build apk --flavor development -t lib/main_development.dart

build-staging: ## Build staging APK
	flutter build apk --flavor staging -t lib/main_staging.dart

build-prod: ## Build production APK
	flutter build apk --flavor production -t lib/main_production.dart

# iOS Builds
build-ios-dev: ## Build development iOS
	flutter build ios --flavor development -t lib/main_development.dart

build-ios-staging: ## Build staging iOS
	flutter build ios --flavor staging -t lib/main_staging.dart

build-ios-prod: ## Build production iOS
	flutter build ios --flavor production -t lib/main_production.dart