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

### Using the < DataType >

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

In order to properly create a dictionary type of list(similar to python) in dart. Here, we would have to declare a class with a constructor that would serve as our dictionary. Which we would then use to declare in our quiz_page.dart file. To begin we must first create a new file with the new class in it. <br>
syntax:- <br >

Here I used what I learned from Mitch Koko's course of properly organizing my code and files inside folders as this also helps in properly optimizing the performance of our app.
Now to begin we use the keyword class and then declare the name of our class in this case it would be named "Question"

```
class Question {
  //code block here...
}
```

Next, in order to be able to combine our questions and answers, we must first declare variables and assign the proper data types to it, now in this case our questions are strings and our answers are booleans. <br>
syntax:- <br>

```dart
class Question {
  String questionText;
  bool questionAnswer;
}
```

Next up, we declare our constructor([this will be explained later](#constructors)) by using the following syntax:- <br>

```dart
class Question {
  String questionText;
  bool questionAnswer;

  <!-- this is our constructor -->
  Question({required this.questionText, required this.questionAnswer});
}
```

By doing so, we are now able to use this constructor as pretty much of a similar method to how we declare Python Dictionaries, or in Javascript this is similar to declaring Key

## OOP Concept: Object Oriented Programming Concept:

### Class

If we were to explain this analogically, a class is similar to that of a blueprint, It's pretty much the paper, where we plan on how the product, building or structure of our app will be built.
<br>
<br>

### Object

Now an object is the actualy product, building, or (in this sense) the actual app itself. This would be the fully functional product, the actual building, what it's meant to hold, what the purpose of that building is, or if it were an app,it will be the actual button that can receive taps, or an image that can actually change,these are the actual objects, but because we can't see thte objects until our app is running.
<br>
This is the part where we plan on how it will function, how they will work, by creating these classes.
<br>

## Important things that a class has.

### Property

If we're building a car these would be it's attributes, so these would be, how many seats it has, the number of wheels that car will have, whether if it's a manual or automatic transmission car, the color of the car, basically anything that involves the characteristic of the object.

<br>

But in a programming/coding sense, these would be the variables inside our class, and thus these are now known as **Properties or Fields**

### Methods

These are the actions that the object can do. The actions that will eventually get created, will be able to perform. So in the case of our car object:

<br>
These would be, to drive, to brake, or to turn around, etc.. These methods are actions that the object will be able to do, that we will define in our class, even before the object gets built.

<br>
Now in a programming/coding sense. These would be the functions within our class. Functions that contain codeblocks that tell our app what to do whenever it gets called.

## Object

Now an object, let's use the car analogy as an example, an object would be the car, it's the object that actually performs the pre-planned action inside the class. <br>
Such as moving, or it actually has the characteristics(in this case this are our properties), which we defined in our class such as color, numberOfDoors property.

### Paths of creating an object

The two paths of creating an object are as follows:

#### Creating the class

We must first create our class because this will serve as our blueprint that will define everything about the object that will get created.
<br>
syntax:-

```
class Car {

  <!-- theses are examples of properties. -->
  int numberOfDoors = 4;
  var color = "green";
  var engineType = "V8";


  <!-- this is an example of a method. -->
  void drive() {
    //code block here...
    print('The Wheels start turning');
  }
}
```

#### Creating the object

To create the object from the class use the following syntax:-

```
Car myCar = Car();

```

So in this case we must first define the type of object we want to create by calling the class we have predefined, in this case it's our class **"Car"**, followed by giving our object a name which in the code above would be **"myCar"**. <br>
Then we finally set it to equal a new version of our class. Now the code above shows `Car();`, adding the parentheses after the name of our class allows us to define a new object from that class/blueprint. <br>

## Constructors

A constructor is like the setup process for your toy car. It’s a special function that automatically runs when you create (or "build") the object. It sets everything up, like giving the car its color, attaching the wheels, or charging the battery.

<br>
syntax:-

```
<!-- class -->
class Human {

  <!-- properties -->
  double height;
  int? age;

  <!-- this is an example of a constructor. -->
  Human({required this.height});

}

```

Now constructors allow us to predefine the properties of our class or how we want to build our object. With the code above, this is an example of how we can properly associate our properties with the parameters inside our constructors. Hence allowing us to assign proper values to the class' properties.

## Object Oriented Programming:

Four pillars of Object Oriented Programming are as follows:

- **Abstraction**
- **Encapsulation**
- **Inheritance**
- **Polymorphism**

### Abstraction

- This is sort of an act of breaking something complex into smaller pieces to make it more abstract, or in programming this is what we do when we try to modularize our code, by hiding the processes/brain of our app.

# Encapsulation in Object-Oriented Programming

## What is Encapsulation?

Encapsulation is a fundamental concept in Object-Oriented Programming (OOP) that focuses on:

1. **Bundling Data and Behavior**:

   - Encapsulation groups related variables (data) and methods (functions) that operate on this data into a single unit, typically a class.

2. **Restricting Access**:

   - It **hides sensitive information** inside the class (making it private) and only exposes what’s necessary through controlled access mechanisms like **getters** and **setters**.

3. **Controlling Interactions**:
   - Access to the hidden data is controlled via public methods, ensuring proper validation and behavior.

---

## Key Features of Encapsulation

1. **Data Hiding**:

   - Private data cannot be accessed directly from outside the class. This protects the data from accidental or unauthorized modifications.

2. **Controlled Access**:

   - Public methods, like getters and setters, provide controlled access to the private data while ensuring integrity through validation.

3. **Improved Security and Maintenance**:
   - Encapsulation helps safeguard sensitive data and makes it easier to modify or maintain code without affecting other parts of the application.

---

## Real-Life Analogy: HR Department in a Company

Encapsulation is like the **HR department** in a company:

1. **Sensitive Data (Private)**:

   - Employee details like salary and leave balance are stored securely and hidden from everyone else.

2. **Controlled Access**:

   - Employees can request HR to view their leave balance, and managers can ask HR to update salaries, but direct access to the raw data is not allowed.

3. **Validation**:
   - HR checks if the requester has the proper authorization before providing or modifying the information.

This ensures sensitive data remains secure, and access is appropriately managed.

---

## Benefits of Encapsulation

- **Protects Data Integrity**:

  - Ensures data is not accidentally or maliciously altered.

- **Simplifies Code Interaction**:

  - Users of the class interact with it through defined methods, without needing to understand internal details.

- **Makes Code Easier to Maintain**:
  - Changes to internal implementation do not affect the external interface.

---

## Example in Dart

Here’s how encapsulation is implemented in Dart using an HR system as an analogy:

```dart
class Employee {
  // Private data members
  String _name;
  double _salary;
  int _leaveBalance;

  // Constructor
  Employee(this._name, this._salary, this._leaveBalance);

  // Getter for name (anyone can see the name)
  String get name => _name;

  // Getter for leave balance (controlled access)
  int getLeaveBalance(String requester) {
    if (requester == 'employee') {
      return _leaveBalance;
    } else {
      print('Access Denied: Only the employee can view their leave balance.');
      return -1; // Denotes unauthorized access
    }
  }

  // Method to update salary (controlled by HR authorization)
  void updateSalary(double newSalary, String requester) {
    if (requester == 'HR') {
      _salary = newSalary;
      print('Salary updated to: \$${_salary.toStringAsFixed(2)}');
    } else {
      print('Access Denied: Only HR can update the salary.');
    }
  }

  // Method to display employee details (non-sensitive)
  void displayEmployeeInfo() {
    print('Name: $_name');
    print('Salary: Confidential');
    print('Leave Balance: Confidential');
  }
}

void main() {
  // Create an employee object
  Employee emp = Employee('Alice', 50000.0, 15);

  // Display employee info
  emp.displayEmployeeInfo(); // Outputs name, hides salary and leave balance

  // Try to access leave balance as the employee
  print('Leave Balance: ${emp.getLeaveBalance('employee')} days'); // Outputs: 15 days

  // Try to access leave balance as a manager
  print('Leave Balance: ${emp.getLeaveBalance('manager')} days'); // Outputs: Access Denied

  // Attempt to update salary as HR
  emp.updateSalary(55000.0, 'HR'); // Outputs: Salary updated to $55000.00

  // Attempt to update salary as the employee
  emp.updateSalary(60000.0, 'employee'); // Outputs: Access Denied
}
```

---

## How Encapsulation Works in the Example

1. **Private Data Members**:

   - `_name`, `_salary`, and `_leaveBalance` are private and cannot be accessed directly from outside the class.

2. **Controlled Access with Methods**:

   - The `getLeaveBalance()` method allows access to the leave balance, but only if the requester is authorized (e.g., the employee themselves).
   - The `updateSalary()` method lets HR update the salary but blocks unauthorized users (e.g., the employee or a manager).

3. **Validation**:

   - Before performing actions like viewing or modifying sensitive data, the code validates the requester's identity.

4. **Encapsulation in Action**:
   - The private variables are hidden, and all interactions are controlled through methods, ensuring security and proper validation.

---

Encapsulation ensures data security, provides controlled access, and makes your code easier to maintain and more reliable.
