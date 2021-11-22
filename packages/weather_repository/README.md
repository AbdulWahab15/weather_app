# weather_repository
repository layer:

The goal of our repository layer is to abstract our data layer and facilitate communication with the bloc layer.
In doing this, the rest of our code base depends only on functions exposed by our repository layer instead of
specific data provider implementations. This allows us to change data providers without disrupting any of the
application-level code. For example, if we decide to migrate away from metaweather, we should be able to create a new
API client and swap it out without having to make changes to the public API of the repository or application layers.

A new Flutter package project.

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
