# rolldice_app

A new Flutter project.

## Getting Started

This project is all about learning the basics, understanding how flutter works, learning about creating custom constructor functions, learning to create methods for buttons in dart/flutter, and giving the button some functionality and interactivity to the app.

<!-- Notes to self -->

// this is a sample syntax of how to create a custom constructor function.

<!-- ClassName.constructorname() -->

GradientContainer.purple({super.key})
: colorOne = Colors.deepPurple.shade900,
colorTwo = Colors.deepPurpleAccent.shade400;

<!-- Learning to use random module. -->

To import a random module/function we must first import the "dart:math" package that comes with dart. No need to access the pub.dev site to get the additional packages. this is now a prebuilt function within dart.

then use the following syntax
Random().nextInt() -> Generates a non-negative random integer uniformly distributed in the range from 0, inclusive, to [max], exclusive.

Implementation note: The default implementation supports [max] values between 1 and (1<<32) inclusive.

e.g.
var intValue = Random().nextInt(10); // Value is >= 0 and < 10.
intValue = Random().nextInt(100) + 50; // Value is >= 50 and < 150.

<!-- end notes to self -->

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
