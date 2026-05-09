# New Job Portal — Flutter App

The mobile client for New Job Portal. Built with Flutter using Clean Architecture, BLoC state management, and real-time WebSocket updates.

---

## Prerequisites

- Flutter 3.x with Dart SDK ^3.10.1
- Android Studio or Xcode (depending on target platform)
- The backend running and reachable (see the backend README)

---

## Setup

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

The build runner generates Freezed models, JSON serializers, DI config, and route classes. Wait for it to finish (30–60 seconds) before running the app.

---

## Configure the backend URL

Open [lib/src/core/infrastructure/network/api_client.dart](lib/src/core/infrastructure/network/api_client.dart) and set `baseUrl`. Open [lib/src/core/infrastructure/websocket/websocket_service.dart](lib/src/core/infrastructure/websocket/websocket_service.dart) and set the Socket.IO URL to match.

| Where you're testing | URL |
|---|---|
| Android emulator, backend on same machine | `http://10.0.2.2:4000` |
| iOS simulator, backend on same machine | `http://localhost:4000` |
| Physical device, backend on same machine | `http://<your-machine-local-ip>:4000` |
| Backend on a remote server | `http://<server-ip-or-domain>:4000` |

---

## Run

```bash
flutter run
```

To target a specific device:

```bash
flutter devices                        # list available devices
flutter run -d <device-id>
```

---

## Build a release APK

```bash
flutter build apk --release
```

Output: `build/app/outputs/flutter-apk/app-release.apk`

Install directly onto a connected Android device:

```bash
flutter install
```

---

## Folder structure

```
lib/src/
├── app/
│   ├── app.dart                  App entry point, DI bootstrap, global BlocProviders
│   ├── injection.dart            GetIt + Injectable setup
│   └── router/
│       └── app_router.dart       AutoRoute config, AuthGuard, SplashPage
├── core/
│   ├── domain/failures/          ApiFailure sealed class
│   ├── infrastructure/
│   │   ├── network/              Dio client with auth interceptor
│   │   ├── auth/                 JwtTokenStore (FlutterSecureStorage)
│   │   └── websocket/            Socket.IO service with broadcast streams
│   └── presentation/
│       ├── theme/                Material 3 theme, colours, typography
│       └── widgets/              CustomButton, CustomTextField, LoadingIndicator
└── features/
    ├── auth/
    │   ├── domain/               AuthUser entity, IAuthRepository
    │   ├── infrastructure/       AuthRepository, AuthUserDto
    │   ├── application/          AuthBloc, LoginBloc
    │   └── presentation/         LoginPage, OtpVerificationPage
    ├── jobs/
    │   ├── domain/               Job, JobApplication entities, IJobsRepository
    │   ├── infrastructure/       JobsRepository, JobDto, JobApplicationDto
    │   ├── application/          JobsListBloc, JobDetailsBloc
    │   └── presentation/         JobsListPage, JobDetailsPage, JobCard, JobListShimmer
    └── profile/
        ├── domain/               UserProfile, UserActivity entities, IProfileRepository
        ├── infrastructure/       ProfileRepository, UserProfileDto
        ├── application/          ProfileBloc, ActivityBloc
        └── presentation/         ProfilePage, ProfileSetupPage
```

---

## Architecture

Each feature is split into four layers. The **domain** layer holds plain Dart entities and abstract repository interfaces — no Flutter, no Dio, no framework dependencies. The **infrastructure** layer implements those interfaces: it calls the API via Dio, maps JSON DTOs to domain entities, and handles errors with `Either` from `dartz`. The **application** layer holds BLoC classes that call repository methods and emit immutable states modelled with Freezed sealed classes. The **presentation** layer contains Flutter widgets that read BLoC state and dispatch events — it knows nothing about HTTP or JSON.

Dependency injection is handled by `get_it` + `injectable`. Navigation is handled by `auto_route` with an `AuthGuard` that checks `AuthBloc` state before allowing access to protected routes. The JWT is stored in `FlutterSecureStorage` and attached to every request by a Dio interceptor.

---

## Testing the app

### Log in

Enter any phone number on the login screen and tap **Send OTP**. The OTP appears in the Flutter console:

```
🔑 OTP for 9876543210: 483021
```

In development you can also type `000000` as a universal bypass — it is accepted for any phone number without checking the generated OTP.

### Profile setup

First-time users land on the profile setup screen after login. Fill in name, skills, and location. Returning users skip this and go straight to the job feed.

### Browse and apply

Scroll the job feed — it paginates automatically at the bottom (20 jobs per page). Pull down to refresh. Tap a job to open details and tap **Apply Now** to apply. Once applied, the button shows **Already Applied** and stays disabled even after restarting the app (the state comes from the API).

### Real-time updates

While the job feed is open, have another user apply to a job (or do it yourself via curl with a second account). The applicant count on the card updates live without refreshing the page.

### Profile and activity

Tap the person icon in the top right of the job feed. Your profile, skills, and full application history load from the API. Tap the pencil icon to edit your profile. Pull down to refresh.

### Sign out

Tap **Sign Out** on the profile screen. You return to the login screen and cannot navigate back to the job feed without logging in again.

---

## Common issues

**Build runner fails**

```bash
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

**App loads indefinitely on the job feed**

Make sure the backend is running and the `baseUrl` in `api_client.dart` matches your setup. Check the Flutter console for any network errors.

**OTP not working**

The OTP expires after 10 minutes. Request a new one with the Resend button, or use `000000` in development.
