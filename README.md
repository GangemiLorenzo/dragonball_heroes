# Dragon Ball Heroes

<p align="center">
  <img src="logo_dragonballapi.webp" alt="Dragon Ball API Logo" width="200"/>
</p>

A Flutter application that showcases Dragon Ball characters using the Dragon Ball API.

## 📱 Demo

https://github.com/user-attachments/assets/d92fa65b-062d-4ee2-9d34-6a83a08f4dd8


## API Integration

The app consumes the Dragon Ball API with the following endpoints:

- **GET /characters**: Paginated character list with `page` and `limit` parameters
- **GET /characters/{id}**: Individual character details with transformations


## Getting Started

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/GangemiLorenzo/dragonball_heroes.git
   cd dragonball_heroes
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run code generation** (if needed)
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the app**
   ```bash
   # Development environment
   flutter run --flavor development 
   
   # Production environment
   flutter run --flavor production 
   ```

## Testing

The project includes the following testing:

- **Unit Tests**: Business logic and utilities
- **Bloc Tests**: State Management logic

Run tests with:
```bash
flutter test
```

## Environment Configuration

The app supports multiple environments:

- **Development** (`.env.dev`): For local development
- **Staging** (`.env.stg`): For testing and QA
- **Production** (`.env.prod`): For release builds

