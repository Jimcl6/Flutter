// ignore_for_file: prefer_const_constructors

import 'package:basics_app/pages/first_page.dart';
import 'package:basics_app/pages/homepage.dart';
import 'package:basics_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}

/*
P R O G R A M M I N G - F U N D A M E N T A L S

VARIABLES:
String name = 'Jed Llorente';
  Number Data types:  
    int age = 31;
    double pi = 3.14159;
bool isBeginner = true;

-------------------------------------------------------------//

BASIC MATH OPERATORS:
+: addition
-: subtraction
*: multiply
/: divide
%: remainder / modulo

-------------------------------------------------------------//

COMPARISON OPERATORS:
==: EQUAL TO
!=: NOT EQUAL TO
>: GREATER THAN
<: LESSER THAN
>=: GREATER OR EQUAL TO
<=: LESSER OR EQUAL TO

-------------------------------------------------------------//

LOGICAL OPERATORS:

&& / AND OPERATOR: returns true if both sides are true.
syntax:
  isBeginner && (age < 18)

|| / OR OPERATOR: returns true if either sides are true.
syntax:
  isBeginner || (age < 18)

NOT operator (!) returns the opposite value
syntax:
  !isBeginner -> returns true.

*/

// ** ------------------------------!!!---------------------------- ** //

/*

C O N T R O L - F L O W

if statement
syntax:
  if (condition) {
    //do something...
  }

-------------------------------------------------------------//

if else statement:
syntax:
  if (condition) {
    //do something...  
  } else {
    //do something...
  }

-------------------------------------------------------------//

if else if statement:
syntax:
  if (condition) {
    //do something...
    //  
  } else if(condition) {
    //do something...
  } else {
    //do something...
  }

-------------------------------------------------------------//

  switch statement:
  syntax:
  switch (expression) {
    case value:
      print('Hello world!');
      break;
    case value:
      print('Hello world!');
      break;
    case value:
      print('Hello world!');
      break;
    case value:
      print('Hello world!');
      break;
    default:
      break;
  }

*/

// ** ------------------------------!!!---------------------------- ** //

/* 
L O O P S

FOR LOOP
imagine you have a box of 10 different colored crayons and you want to draw a circle with each one. Instead of saying:

"Draw a circle with the first crayon, then draw a circle with the second crayon, etc..."

It's much easier to say:
"For each crayon in the box, draw a circle."

syntax:
for (initialization; condition; iteration) {
    
  }

for (initialization: var i = 0; condition: i < 5; iteration: i++) {
    
  }

break -> this would break out of a loop/exit the loop.

continue -> this skips the current iteration.
e.g.:
  for (var i = 0; i <= 8; i++) {
    if (i == 6) {
      continue;
    }
    print(i);
  }
  result:
  I/flutter ( 9206): 0
  I/flutter ( 9206): 1
  I/flutter ( 9206): 2
  I/flutter ( 9206): 3
  I/flutter ( 9206): 4
  I/flutter ( 9206): 5
  I/flutter ( 9206): 7
  I/flutter ( 9206): 8


while loop: In a for loop, you have to specify the number of times to loop. If you don't know
how many times to loop, you can use a "while" loop to keep looping until a certain condition
is met.

syntax:
  int countDown = 5;
  while (countDown > 0) {
    print(countDown);
    countDown--;
  }

*/

// ** ------------------------------!!!---------------------------- ** //

/*
F U N C T I O N S / M E T H O D

We just looked at some cool blocks of code that gets things done!
We can organize these blocks of codes into function so that we can reuse them
easily.

** 'void' - this means that the function returns nothing. Shortly we will look at functions that do return something. This one for now just executes the code in he function.

// basic function - this is a sample of a basic function, 
void greet() {
  print("Hello, Jed");
}

// functions with parameters - this is a form of function that accepts arguments, we can add as many parameters as we like,
void greetName(String name, int age){
  print("Hello $name")
}

// function with return type
int add(int a, int b) {
  int sum = a + b;
  return sum;
}

print(add(5, 5));

*/

// ** ------------------------------!!!---------------------------- ** //

/* 

D A T A - S T R U C T U R E S
LIST:- ordered collections of elements, can have duplicates.
syntax: 
  List<String> names = ['Jed', 'Ian', 'Michael'];

  void printNumbers() {
    for (var i = 0; i < names.length; i++) {
      print(names[i]);
    }
  }

  printNumbers();
  RESULT:
  names[0] -> Jed
  names[1] -> Ian
  names[2] -> Michael

SET:- unordered collection of unique elements.
syntax:
  Set<String> uniqueName = {"Mitch", "Sharon", "Vince"}

MAP:- Stored as key-value pairs. This is a similar concept to that of Python's dictionaries.
syntax:
Map user = {
  'name': 'Jed Llorente',
  'age': 25,
  'height': 164.6,
};

**To access/retrive the information/data in a map is similar to that that of python's dictionaries syntax:
user['name'] -> 'Jed Llorente';
user['age'] -> 25;
user['height'] -> 164.6;

*/

