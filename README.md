# beers_flutter

A Flutter application consuming beers api to fetch and display a list of beers and their prices. This app is build upon Clean Architecture and TDD.


## Getting Started

To run this project, 
- You need to have Flutter installed on your machine. You can find the installation guide [here](https://flutter.dev/docs/get-started/install).
- Clone this repository
- Run `flutter pub get` to install all the dependencies
- Run `flutter pub run build_runner build ` to generate the files for floor database
- Run `flutter run` to run the app on your device or emulator

## Architecture

This app is built upon Clean Architecture. The architecture is divided into 3 layers:

- **Data Layer**: This layer contains all the data sources and repositories. It also contains the models for the data.
- **Domain Layer**: This layer contains the use cases and the entities.
- **Presentation Layer**: This layer contains the UI and the BLoC.

## Testing

This app is built using TDD. The tests are divided into 3 layers:

- **Data Layer**: This layer contains the tests for the data sources and repositories.
- **Domain Layer**: This layer contains the tests for the use cases.
- **Presentation Layer**: This layer contains the tests for the BLoC.

## Packages

- [flutter_bloc](https://pub.dev/packages/flutter_bloc): Flutter Widgets that make it easy to integrate blocs and cubits into Flutter.
- [equatable](https://pub.dev/packages/equatable): Equatable is a Dart package that helps to implement value equality without needing to explicitly override == and hashCode.
- [dio](https://pub.dev/packages/dio): A powerful Http client for Dart, which supports Interceptors, FormData, Request Cancellation, File Downloading, Timeout etc.
- [floor](https://pub.dev/packages/floor): A persistence library for SQLite, providing an abstraction layer over SQLite to define entities and accessors for them.
- [mockito](https://pub.dev/packages/mockito): A popular mocking framework for Dart.
- [mocktail](https://pub.dev/packages/mocktail): A popular mocking framework for Dart.
- [cached_network_image](https://pub.dev/packages/cached_network_image): A Flutter library to load and cache network images.
- [flutter_test](https://pub.dev/packages/flutter_test): Flutter testing support.
- [block_test](https://pub.dev/packages/bloc_test): A testing library that makes it easy to test blocs and cubits.
- [logger](https://pub.dev/packages/logger): A simple logging utility with support for multiple log levels, ANSI colors, line numbers, printing to console, file and custom output.
- [dartz](https://pub.dev/packages/dartz): Functional programming in Dart.
- [get_it](https://pub.dev/packages/get_it): A simple Service Locator for Dart and Flutter projects with some additional goodies.

## Resources

- [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [TDD](https://www.youtube.com/watch?v=KtHQGs3mSfM)

You found a bug? Please [file an issue]
