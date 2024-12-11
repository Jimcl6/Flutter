# adv_basics

A new Flutter project.

## Getting Started

"..." -> spread operator.

```
currentQuestion.answers.map(
    (answer) {
    return AnswerButton(onTap: () {}, child: answer);
    },
),
```

Code above is a sample of how we can iterate through the our Dart List. However this code does not work well with the Column widget, since this widget's parameter accepts only widgets! To get around this we use the "..." spread operator.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
