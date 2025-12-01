# Dragon Ball API Flutter Challenge - Copilot Instructions

## Project Overview
This is a Flutter application that consumes the Dragon Ball API to display character information. The app demonstrates clean architecture patterns, proper async handling, and polished UI/UX.

## Architecture
- **Pattern**: Clean Architecture with BLoC for state management
- **Layers**: 
  - Presentation (UI/Widgets)
  - Business Logic (BLoC)
  - Data (Repositories, API Services)
  - Domain (Entities, Use Cases)

## API Details
- **Base URL**: Configured in `.env` files (`.env.dev`, `.env.prod`, `.env.stg`)
- **API Implementation**: Generated from Swagger files in `assets/swagger/` directory
- **Main Endpoints**:
  - `GET /characters` - Paginated character list (page, limit params)
  - `GET /characters/{id}` - Character details

## Key Requirements
- Paginated character list (20 items per page)
- Character detail screen with transformations
- Proper loading states, error handling with retry
- Clean async flow management
- Polished UI/UX

## Development Guidelines
- Use BLoC pattern for state management
- Implement proper error handling and loading states
- Follow Flutter best practices for navigation
- Ensure clean separation of concerns
- Focus on user experience and smooth interactions

## Current Development Focus
Building the core functionality with emphasis on clean code architecture and robust async handling.