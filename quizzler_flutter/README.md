# quizzler_flutter

## What you will create

We’re going to make a quiz app that tests your general knowledge. As one of the most popular types of apps on the app stores, you can create your own quiz for other people to enjoy!

![Finished App](https://github.com/londonappbrewery/Images/blob/master/quizzler-demo.gif)

## What you will learn

- Modularising your code into separate classes.
- Dart classes and objects.
- Using class constructors.
- Extracting Widgets to refactor your code.
- private and public modifiers in Dart.
- How to use Dart lists.
- The difference between var, const and final.

## Notes to self

### Using the <DataType>

Using the <Datatype> allows us to explicitly declare the kind of data types we want our variables to contain. e.g. <br>
syntax:- <br>

```
List<Widget> scoreKeeper = const [
    Icon(
      Icons.close,
      size: 25,
      color: Colors.red,
    ),
    Icon(
      Icons.check,
      size: 25,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      size: 25,
      color: Colors.red,
    ),
    Icon(
      Icons.check,
      size: 25,
      color: Colors.green,
    ),
  ];
```

The list above has been declared to only accept Widgets: Now check out the code below: <br>
syntax:- <br>

```
List<String> myString = ['a', 'b' ,'c'];
```

The code above will only accept strings, if it's any other data type the list wouldn't accept it. Not unless we remove the **"<DataType>"** notation.
