

# Auth JWT

A full-stack application built with Laravel (backend) and Flutter (frontend).

## Installation Guide

### Backend (Laravel)

1. **Clone the repository**:
   ```bash
   git clone https://github.com/auth_laravel_flutter.git
   cd auth_laravel_flutter/auth_be
   ```

2. **Install dependencies**:
   ```bash
   composer install
   ```

3. **Set up environment variables**:
   - Copy `.env.example` to `.env`:
     ```bash
     cp .env.example .env
     ```
   - Update database credentials in the `.env` file.

4. **Generate application key**:
   ```bash
   php artisan key:generate
   php artisan jwt:secret
   ```

5. **Run migrations**:
   ```bash
   php artisan migrate
   ```

6. **Start the server**:
   ```bash
   php artisan serve
   ```

### Frontend (Flutter)

1. **Navigate to the Flutter directory**:
   ```bash
   cd auth_laravel_flutter/auth_fe
   ```

2. **Install Flutter dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```

## Notes

- Ensure you have the necessary environment installed:
  - **Laravel**: PHP ≥ 8.1, Composer
  - **Flutter**: Flutter SDK ≥ 3.22, Dart
- For API integration, ensure the backend is running and update the API URL in the Flutter project.
