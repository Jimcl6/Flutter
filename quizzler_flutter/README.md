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

```dart
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

```dart
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

```dart
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

```dart
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

# Inheritance in Object-Oriented Programming

## What is Inheritance?

Inheritance is a core concept in Object-Oriented Programming (OOP) that allows a class (called a **child class** or **subclass**) to inherit properties and behaviors from another class (called a **parent class** or **superclass**). This enables code reuse and establishes a relationship between classes. Now the syntax for inheritance would be as follows: <br>

syntax:-

```dart

void main() {
  ParentClass mom = ParentClass();

  print(mom.eyeColor) //Output: this prints the value "brown"

  ChildClass son = ChildClass();

  print(son.eyeColor) //Output: this prints the value "brown" due to the fact that the 'ChildClass' class has inherited the property "eyeColor" from the parentClass "ParentClass".
}

class ParentClass {
  String eyeColor = 'brown';
  double height = 15.0;

  void nagger() {
    print('blah blah blah blah');
  }
}


class ChildClass extends ParentClass {
  int weight = 40;

  void extrovert() {
    print('friends everywhere.');

  }
}
```

_Note_: to make our child class inherit properties and methods from our parentClass we use the **_extends_** keyword

---

## Key Features of Inheritance

1. **Code Reusability**:

   - Common properties and methods are defined in the parent class and reused by child classes, reducing code duplication.

2. **Hierarchy Establishment**:

   - Inheritance allows for hierarchical relationships, where specialized classes extend the functionality of more general classes.

3. **Overriding**:

   - Child classes can override methods from the parent class to provide specialized behavior while retaining the base implementation.

4. **Polymorphism**:
   - Inherited methods can be overridden to exhibit different behavior for objects of child classes, supporting polymorphism.

---

## Real-Life Analogy: Employees in a Company

Think of a company:

1. **General Properties and Behavior**:

   - Every employee has properties like `name` and `ID` and behaviors like `work()`.

2. **Specialized Employees**:

   - A **Manager** is a type of employee with additional responsibilities, such as `conductMeeting()`.
   - A **Developer** is another type of employee with specific skills, such as `writeCode()`.

3. **Inheritance in Action**:
   - The `Employee` class defines shared attributes and methods, while `Manager` and `Developer` inherit and extend this base functionality.

---

## Example in Dart

Here’s how inheritance is implemented in Dart using the company analogy:

```dart
// Parent class
class Employee {
  String name;
  int id;

  Employee(this.name, this.id);

  // General behavior
  void work() {
    print('$name is working.');
  }
}

// Child class (inherits from Employee)
class Manager extends Employee {
  Manager(String name, int id) : super(name, id);

  // Specialized behavior
  void conductMeeting() {
    print('$name is conducting a meeting.');
  }
}

// Child class (inherits from Employee)
class Developer extends Employee {
  Developer(String name, int id) : super(name, id);

  // Specialized behavior
  void writeCode() {
    print('$name is writing code.');
  }
}

void main() {
  // Create objects of Manager and Developer
  Manager manager = Manager('Alice', 1);
  Developer developer = Developer('Bob', 2);

  // Access inherited and specialized behaviors
  manager.work(); // Output: Alice is working.
  manager.conductMeeting(); // Output: Alice is conducting a meeting.

  developer.work(); // Output: Bob is working.
  developer.writeCode(); // Output: Bob is writing code.
}
```

---

## How Inheritance Works in the Example

1. **Parent Class**:

   - The `Employee` class defines common properties (`name`, `id`) and behaviors (`work()`).

2. **Child Classes**:

   - The `Manager` and `Developer` classes inherit from the `Employee` class and gain access to its properties and methods.

3. **Specialized Behavior**:

   - The `Manager` class adds the `conductMeeting()` method, and the `Developer` class adds the `writeCode()` method.

4. **Reusability**:
   - Both child classes reuse the `work()` method defined in the `Employee` class without redefining it.

---

## Benefits of Inheritance

- **Reduces Code Duplication**:

  - Shared attributes and methods are written once in the parent class and reused by child classes.

- **Promotes Code Organization**:

  - Establishes a clear hierarchy and specialization for related classes.

- **Enables Extensibility**:
  - New child classes can be added without modifying the parent class.

---

## Key Points to Remember

- A child class inherits all non-private properties and methods from the parent class.
- Use the `super` keyword to access the parent class’s constructor or methods.
- Override methods in the child class to provide specialized behavior.
- Inheritance supports code reusability, extensibility, and polymorphism.

---

Inheritance simplifies code management by organizing related classes into a clear hierarchy, enabling reuse and extensibility.

# Polymorphism in Object-Oriented Programming

## What is Polymorphism?

Polymorphism is a core concept in Object-Oriented Programming (OOP) that allows objects to take on many forms. It enables a single interface or method to be used by different types of objects, leading to flexible and reusable code. In simpler terms, it means **one name, multiple forms**.

---

## Types of Polymorphism

1. **Compile-Time Polymorphism (Method Overloading)**:

   - The same method name is used for different tasks but distinguished by the number or type of parameters.
   - Example: A `print()` method could handle printing text, numbers, or a combination.

2. **Run-Time Polymorphism (Method Overriding)**:
   - A child class provides a specific implementation for a method that is already defined in its parent class.
   - The decision of which method to call is made at runtime.

---

## Real-Life Analogy: A Manager Giving Instructions

Imagine a manager in a company giving instructions:

1. If the manager is instructing a **developer**, the instruction might be to **write code**.
2. If the manager is instructing a **designer**, the instruction might be to **design a UI**.
3. The **instruction** interface remains the same, but the action taken depends on the employee type (developer or designer).

---

## Example in Dart: Polymorphism with Employees

```dart
// Parent class
class Employee {
  String name;

  Employee(this.name);

  // Generic method to perform a task
  void performDuties() {
    print('$name is performing general duties.');
  }
}

// Child class 1
class Developer extends Employee {
  Developer(String name) : super(name);

  @override
  void performDuties() {
    print('$name is writing code.');
  }
}

// Child class 2
class Designer extends Employee {
  Designer(String name) : super(name);

  @override
  void performDuties() {
    print('$name is designing a user interface.');
  }
}

// Main function demonstrating polymorphism
void main() {
  // List of employees
  List<Employee> employees = [
    Developer('Alice'),
    Designer('Bob'),
    Employee('Charlie'),
  ];

  // Call performDuties on each employee
  for (var employee in employees) {
    employee.performDuties();
  }
}
```

### Output

```
Alice is writing code.
Bob is designing a user interface.
Charlie is performing general duties.
```

---

## How Polymorphism Works in the Example

1. **Parent Class**:
   - The `Employee` class defines a `performDuties()` method.
2. **Child Classes**:
   - `Developer` and `Designer` override the `performDuties()` method with their specific implementation.
3. **Dynamic Dispatch**:
   - At runtime, Dart determines which `performDuties()` method to invoke based on the object's type.

---

## Benefits of Polymorphism

- **Code Flexibility**:
  - Write code that works for a parent class but behaves differently depending on the child class instance.
- **Reduced Coupling**:
  - Work with general interfaces rather than specific implementations.
- **Scalability**:
  - Add new types of classes without changing existing code.

---

Polymorphism promotes clean, scalable, and reusable code by allowing multiple forms of behavior under a unified interface.

---

# Understanding Constructors in Object-Oriented Programming (OOP)

## What is a Constructor?

A **constructor** is a special type of function in a class that gets called automatically when you create an object of that class. Think of it as a way to prepare or set up your object with some initial values or configurations.

---

## Why Use Constructors?

1. **Initialize Variables**: When you create an object, the constructor can assign initial values to the object’s variables (properties).
2. **Setup Logic**: You can use the constructor to perform tasks like setting up default values or doing some preparatory steps for the object.
3. **Improve Readability**: Instead of manually assigning values to properties every time you create an object, constructors let you do it in one step.

---

## How Constructors Work?

When you create an object, the constructor is executed. If you don’t define a constructor, Dart provides a default one that does nothing. But if you need to set initial values, you define your own constructor.

---

## Example in Dart

Here’s how constructors work in Dart:

```dart
class Person {
  String name; // property
  int age; // property

  // Constructor
  Person(String name, int age) {
    this.name = name; // 'this' refers to the current instance
    this.age = age;
  }

  // Method to display details
  void displayInfo() {
    print("Name: \$name, Age: \$age");
  }
}

void main() {
  // Create an object of the class using the constructor
  Person person1 = Person("Alice", 25);
  person1.displayInfo(); // Output: Name: Alice, Age: 25

  Person person2 = Person("Bob", 30);
  person2.displayInfo(); // Output: Name: Bob, Age: 30
}
```

### Key Points

1. **`Person(String name, int age)`**: This is the constructor. It takes parameters (`name` and `age`) and assigns them to the object’s properties.
2. **`this.name` and `this.age`**: The keyword `this` refers to the object being created. It’s used to distinguish between class properties and constructor parameters.

---

## Named Constructors in Dart

In Dart, you can create multiple constructors using **named constructors**. This is helpful when you want different ways to create an object.

```dart
class Car {
  String model;
  int year;

  // Regular Constructor
  Car(this.model, this.year);

  // Named Constructor
  Car.electric() {
    model = "Tesla Model 3";
    year = 2023;
  }

  void displayInfo() {
    print("Model: \$model, Year: \$year");
  }
}

void main() {
  Car car1 = Car("Toyota", 2022);
  car1.displayInfo(); // Output: Model: Toyota, Year: 2022

  Car car2 = Car.electric();
  car2.displayInfo(); // Output: Model: Tesla Model 3, Year: 2023
}
```

---

## Constructor with Default Values

You can also provide default values in a constructor:

```dart
class Student {
  String name;
  int grade;

  Student({this.name = "Unknown", this.grade = 0}); // Default values

  void displayInfo() {
    print("Name: \$name, Grade: \$grade");
  }
}

void main() {
  Student student1 = Student(name: "Charlie", grade: 10);
  student1.displayInfo(); // Output: Name: Charlie, Grade: 10

  Student student2 = Student(); // Default values are used
  student2.displayInfo(); // Output: Name: Unknown, Grade: 0
}
```

---

## How Constructors are Useful in Flutter

In Flutter, you’ll often use constructors to pass data into widgets or classes. For example:

```dart
class MyWidget extends StatelessWidget {
  final String title;

  // Constructor to accept a title
  MyWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: MyWidget(title: "Hello, Flutter!"), // Passing data through constructor
      ),
    ),
  ));
}
```

---

## Summary

- A **constructor** is a special function that initializes an object when it’s created.
- Use constructors to set initial values or perform setup tasks.
- Dart provides flexible ways to define constructors, such as default, named, or parameterized constructors.

---

Feel free to explore these examples and adapt them to your projects!
