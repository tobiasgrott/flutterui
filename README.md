# flutterui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Steps to reproduce

```bash
flutter create flutterui
flutter pub add firebase_core
flutterfire configure

flutter pub add cloud_firestore
flutter pub add cloud_firestore_odm
flutter pub add json_annotation

flutter pub add --dev build_runner
flutter pub add --dev cloud_firestore_odm_generator
flutter pub add --dev json_serializable

flutter pub run build_runner build --delete-conflicting-outputs
flutter pub run build_runner watch --delete-conflicting-outputs

flutter pub add flutterfire_ui
```