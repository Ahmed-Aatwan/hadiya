# Hadiya · هديّة

A small gifting app, built as a hands-on learning project.
Arabic-first (RTL) with English support.

## Requirements

- **FVM 4.x** — the Flutter version is pinned per project
- **Flutter 3.47.5** (Dart 3.13.4) — installed through FVM, pinned in `.fvmrc`
- **Xcode 26.x** + iOS Simulator — for iOS builds (macOS only)
- **Android Studio** with the Android SDK, command-line tools and an emulator

## Run

```bash
fvm install          # installs the Flutter version pinned in .fvmrc
fvm flutter pub get
fvm flutter run
Quality gates
Run these before every commit; the CI workflow runs the same three:

fvm dart format .
fvm flutter analyze
fvm flutter test
Localization & text direction
The app supports Arabic (ar) and English (en) and follows the device
language: Arabic → RTL, English → LTR.

Strings: lib/l10n/intl_ar.arb, lib/l10n/intl_en.arb
Generated code: lib/generated/ (committed)
To check the direction, change the device language
(Emulator → Settings → System → Languages) and restart the app.

Project structure
lib/
  app/                  # root widget (MaterialApp)
  core/                 # shared code
  features/<feature>/   # data / domain / presentation
  l10n/                 # .arb string files
  generated/            # generated localization code
test/                   # unit and widget tests
Application id
io.github.ahmedaatwan.hadiya — Android and iOS.