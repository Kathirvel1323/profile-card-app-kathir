# Profile Card App

A single-screen Flutter profile card for Project 01. It uses `MaterialApp`, `Scaffold`, `Card`, `CircleAvatar`, `Column`, `Row`, `Container`, and `Text`, with a reusable `ContactRow` for email, phone, and city.

The sample uses fictional details: Kavya V., Flutter Developer, kavya@example.com, +1 555 010 2030, Chennai, India.

## Run

Open [DartPad](https://dartpad.dev/), choose Flutter, paste `lib/main.dart`, and press **Run**. The card is centered in a `ConstrainedBox` with a 360-pixel maximum width and scrolls on short displays.

A widget is a reusable building block that describes part of a Flutter interface and how it should look or behave.

For a local run, install Flutter, run `flutter create --platforms=web .` once, then run `flutter pub get` and `flutter run -d chrome`.

## Checklist

- Uses `Column`, `Row`, `Container`, and `Text` widgets.
- Shows a circular initials avatar, name, role, and three icon contact rows.
- Uses a reusable `ContactRow` widget and fictional contact details.
- Centers the card, constrains its width, and allows scrolling on narrow screens.
- Test with `flutter test`; GitHub Actions analyzes, tests, builds, and publishes the web preview.

## Extended features

See [docs/FEATURES.md](docs/FEATURES.md) for the enhancement list, source layout, and a quick demo checklist.
