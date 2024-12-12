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

Hence, the code will now look like this:

```
...currentQuestion.answers.map(
    (answer) {
    return AnswerButton(onTap: () {}, child: answer);
    },
),
```

For the answer buttons list:

In order for us to shuffle the items within the list. We must first create a method that would return a list of string values which is somewhat a copy of the list to do this we use the .of() method of dart's List class: <br>
syntax:- <br>

```
List<String> getShuffledAnswers() {
    List.of(answers);
  }
```

Next in order to be able to randomize the list's arrangement, we can use the .shuffle() method. This method allows us to mix up the order of our elements/items within our list. <br>
syntax:- <br>

```
List<String> getShuffledAnswers() {
    List.of(answers).shuffle();
  }
```

But there's one problem to that line of code, we are unable to return that value, and this is because the value of type 'void' can't be returned from the method 'getShuffledAnswers' because it has a return type of 'List<String>'.
<br>
<br>
And so to compensate for this we have to breakdown each step. To start off, we have to put our list of answers inside a variable, then shuffle that variable, then return that variable.<br>

```
List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();

    return shuffledList;
  }

```

**Note: The shuffle method does not create add up elements then shuffles the elements of our list, but rather it just shuffles the elements in our list. Which is why it doesn't affect the final keyword. Because it just pretty much jumbles up the elements within our list.**

Now we can use the shuffled answers within our questions_screen.dart file. <br>
syntax:-<br>

```
...currentQuestion.getShuffledAnswers().map(
    (answer) {
    return AnswerButton(onTap: () {}, child: answer);
    },
),
```

By doing so we call the method that returns a shuffled value of our answers list!

## Managing The Questions Index as State

Our goal here would be to get the questions index (`questions[index]`) changes everytime a question is answered. <br>
<br>

And to do so, we manage it as a **STATE!**. Hence the reason why our questions_screen.dart file is built as a stateful widget. <br>
<br>

To start off, we must first declare a variable that would serve as the our questions index. <br>
syntax:- <br>

```
var currentQuestionIndex = 0;
```

Now the reason why we had it set to zero, is so that it would start with the first question of our questions list, this would also be our reference variable that we will be using to be able to change the question whenever we click on our answer buttons, and to do so we must create a method for this:

```
void answerQuestion() {}
```

Next, now in order for us to be able to move on to the next question we would have to increment the value of our `currentQuestionIndex` variable.

```
void answerQuestion() {
  currentQuestionIndex = currentQuestionIndex + 1;
  // or we can use this method.
  currentQuestionIndex += 1;
  // or this
  currentQuestionIndex++;

  // you can choose from either of three either way works the same.
}
```

**Fun Note:** Incrementation and decrementation <br>
syntax:- <br>

```
var incVariable = 0

//inrement
incVariable++

incVariable += 1

incVariable = incVariable + 1

//decrementation

var decVariable = 5;

<!-- short hand v2 -->
decVariable--;

<!-- short hand v1 -->
decVariable -= 1;

<!-- long-hand version -->s
decVariable = decVariable - 1;

```

Next, we add/call the method we declared earlier into out answer button parameter that accepts functions `onTap`

```
AnswerButton(onTap: () {}, child: answer);

<!-- to this -->

AnswerButton(onTap: answerQuestion, child: answer);

```

!!//----------------------------------------------------------------------//!!

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
