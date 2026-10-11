void main() {

  // ============================================================
  // DART - DAY 2
  // VARIABLES
  // ============================================================


  // ============================================================
  // 1. WHAT IS A VARIABLE?
  // ============================================================

  // A variable is a named reference used to store a value.
  //
  // Simple definition:
  //
  // Variable = named storage/reference for a value.
  //
  // Example:

  int age = 23;

  print(age); // 23


  // ============================================================
  // 2. VARIABLE SYNTAX
  // ============================================================

  // General syntax:
  //
  // dataType variableName = value;
  //
  // Example:

  int marks = 80;
  String name = "Naresh";
  double height = 5.5;
  bool isStudent = true;


  // ============================================================
  // 3. VARIABLE NAME
  // ============================================================

  // A variable name identifies the variable.
  //
  // Example:

  int age = 23;

  // int  -> data type
  // age  -> variable name
  // 23   -> value


  // ============================================================
  // 4. DECLARATION AND INITIALIZATION
  // ============================================================

  // Declaration:
  //
  // int age;
  //
  // Initialization:
  //
  // age = 23;
  //
  // Both can also be done together:

  int number = 10;


  // ============================================================
  // 5. EXPLICIT DATA TYPE
  // ============================================================

  // We can explicitly specify the data type.

  int age = 23;
  String name = "Naresh";
  double height = 5.5;
  bool isStudent = true;

  print(age);
  print(name);
  print(height);
  print(isStudent);


  // ============================================================
  // 6. int
  // ============================================================

  // int stores whole numbers.

  int age = 23;
  int marks = 90;
  int temperature = -5;

  print(age);


  // ============================================================
  // 7. double
  // ============================================================

  // double stores decimal/floating-point numbers.

  double price = 99.99;
  double height = 5.5;

  print(price);


  // ============================================================
  // 8. String
  // ============================================================

  // String stores text.

  String name = "Naresh";

  print(name);


  // ============================================================
  // 9. bool
  // ============================================================

  // bool stores only:
  //
  // true
  // false

  bool isLoggedIn = true;
  bool isAdmin = false;

  print(isLoggedIn);
  print(isAdmin);


  // ============================================================
  // 10. runtimeType
  // ============================================================

  // runtimeType tells us the runtime type of a value.

  int age = 23;

  print(age.runtimeType);

  // Output:
  // int


  String name = "Naresh";

  print(name.runtimeType);

  // Output:
  // String


  double height = 5.5;

  print(height.runtimeType);

  // Output:
  // double


  bool status = true;

  print(status.runtimeType);

  // Output:
  // bool


  // ============================================================
  // 11. var
  // ============================================================

  // var allows Dart to infer the type automatically.
  //
  // Dart determines the type from the initial value.

  var age = 23;

  print(age.runtimeType);

  // Output:
  // int


  var name = "Naresh";

  print(name.runtimeType);

  // Output:
  // String


  var height = 5.5;

  print(height.runtimeType);

  // Output:
  // double


  // IMPORTANT:
  //
  // var does NOT mean "any type".
  //
  // Dart still gives the variable a specific type.


  var day = "Sunday";

  day = "Monday"; // Allowed

  // day = 23; // ERROR
  //
  // Why?
  // day was inferred as String.
  //
  // Therefore it cannot later hold an int.


  // ============================================================
  // 12. dynamic
  // ============================================================

  // dynamic means the variable can hold values of different types.
  //
  // Its type can change at runtime.

  dynamic value = "Hari";

  print(value);
  print(value.runtimeType);

  // String


  value = 23;

  print(value);
  print(value.runtimeType);

  // int


  value = 5.5;

  print(value);
  print(value.runtimeType);

  // double


  // Another example:

  dynamic roll = 23;

  print(roll.runtimeType);

  roll = "twenty-three";

  print(roll.runtimeType);


  // ============================================================
  // 13. var VS dynamic
  // ============================================================

  // var:
  //
  // Type is inferred once and remains that type.

  var number = 10;

  number = 20; // Allowed

  // number = "Hello"; // ERROR


  // dynamic:
  //
  // Type can change.

  dynamic data = 10;

  data = "Hello"; // Allowed

  data = 5.5; // Allowed


  // IMPORTANT:
  //
  // var     -> statically typed after inference
  // dynamic -> dynamically typed


  // ============================================================
  // 14. final
  // ============================================================

  // final means:
  //
  // A variable can be assigned ONLY ONCE.
  //
  // Its value is determined at runtime.

  final int dob = 2021;

  print(dob);

  // dob = 2003; // ERROR
  //
  // Because final cannot be reassigned.


  // final does NOT mean the value must be known at compile time.
  //
  // Example:

  final currentTime = DateTime.now();

  print(currentTime);

  // DateTime.now() is evaluated when the program runs.


  // ============================================================
  // 15. const
  // ============================================================

  // const means the value must be a compile-time constant.
  //
  // A const variable cannot be reassigned.

  const int year = 2023;

  print(year);

  // year = 2024; // ERROR


  // Valid const values:

  const int age = 23;
  const String name = "Naresh";
  const double pi = 3.14;
  const bool isStudent = true;


  // ============================================================
  // 16. FINAL VS CONST
  // ============================================================

  // final:
  //
  // Assigned once.
  // Value can be determined at runtime.
  //
  // Example:

  final time = DateTime.now();


  // const:
  //
  // Must be known at compile time.
  // Also cannot be reassigned.
  //
  // Example:

  const pi = 3.14159;


  // EASY WAY TO REMEMBER:
  //
  // final -> assigned once
  //
  // const -> compile-time constant


  // ============================================================
  // 17. final CAN USE RUNTIME VALUES
  // ============================================================

  final currentDate = DateTime.now();

  print(currentDate);

  // This works because final values can be initialized
  // at runtime.


  // ============================================================
  // 18. const CANNOT USE RUNTIME VALUES
  // ============================================================

  // const currentDate = DateTime.now();
  //
  // ERROR
  //
  // DateTime.now() is calculated at runtime,
  // so it is not a compile-time constant.


  // ============================================================
  // 19. BASIC DATA TYPES
  // ============================================================

  // Common Dart data types:
  //
  // int
  // double
  // String
  // bool
  // List
  // Set
  // Map
  //
  // Other important types:
  //
  // num
  // Object
  // dynamic
  // Null


  // ============================================================
  // 20. num
  // ============================================================

  // num can store both int and double.

  num number = 10;

  print(number);

  number = 10.5;

  print(number);

  // int and double are both subtypes of num.


  // ============================================================
  // 21. LIST VARIABLE
  // ============================================================

  List<String> names = [
    "Naresh",
    "Hari",
    "Ram",
  ];

  print(names);


  // ============================================================
  // 22. SET VARIABLE
  // ============================================================

  Set<int> numbers = {
    10,
    20,
    30,
  };

  print(numbers);


  // ============================================================
  // 23. MAP VARIABLE
  // ============================================================

  Map<String, dynamic> person = {
    "name": "Naresh",
    "age": 23,
    "height": 5.5,
  };

  print(person);


  // ============================================================
  // 24. NULLABLE VARIABLE
  // ============================================================

  // By default, a normal variable cannot contain null.

  // String name = null; // ERROR


  // To allow null, use ? after the type.

  String? nickname = null;

  print(nickname);


  // Example:

  int? age;

  print(age);

  // age currently contains null.


  // ============================================================
  // 25. VARIABLE REASSIGNMENT
  // ============================================================

  int age = 23;

  age = 24;

  print(age);

  // Normal variables can be reassigned,
  // as long as the new value has the correct type.


  // ============================================================
  // 26. final CANNOT BE REASSIGNED
  // ============================================================

  final int age = 23;

  // age = 24; // ERROR


  // ============================================================
  // 27. const CANNOT BE REASSIGNED
  // ============================================================

  const int year = 2023;

  // year = 2024; // ERROR


  // ============================================================
  // 28. VARIABLE NAMING RULES
  // ============================================================

  // Good variable names:

  String firstName = "Naresh";
  int studentAge = 23;
  double productPrice = 100.50;
  bool isLoggedIn = true;


  // Dart convention:
  //
  // Use lowerCamelCase for variable names.
  //
  // Example:
  //
  // firstName
  // studentAge
  // productPrice
  // isLoggedIn


  // ============================================================
  // 29. INVALID VARIABLE NAMES
  // ============================================================

  // Variable names cannot:
  //
  // - start with a number
  // - contain spaces
  // - use reserved keywords
  //
  // Examples:
  //
  // int 1age = 23;        // ERROR
  // String first name;    // ERROR
  // int class = 10;       // ERROR


  // ============================================================
  // 30. VARIABLE TYPES - QUICK COMPARISON
  // ============================================================

  // int:
  //     Whole numbers.
  //
  // double:
  //     Decimal numbers.
  //
  // String:
  //     Text.
  //
  // bool:
  //     true / false.
  //
  // var:
  //     Type inferred by Dart and remains that type.
  //
  // dynamic:
  //     Can hold values of different types.
  //
  // final:
  //     Can be assigned only once; can be runtime value.
  //
  // const:
  //     Compile-time constant; assigned once.


  // ============================================================
  // 31. MOST IMPORTANT DIFFERENCE
  // ============================================================

  // var:

  var a = 10;

  // a = "Hello"; // ERROR


  // dynamic:

  dynamic b = 10;

  b = "Hello"; // Allowed


  // final:

  final c = 10;

  // c = 20; // ERROR


  // const:

  const d = 10;

  // d = 20; // ERROR


  // ============================================================
  // 32. FINAL SUMMARY
  // ============================================================

  // VARIABLE
  //     ↓
  // Named reference/storage for a value.
  //
  //
  // int
  //     ↓
  // Whole number
  //
  //
  // double
  //     ↓
  // Decimal number
  //
  //
  // String
  //     ↓
  // Text
  //
  //
  // bool
  //     ↓
  // true / false
  //
  //
  // var
  //     ↓
  // Type inferred once
  //
  //
  // dynamic
  //     ↓
  // Type can change at runtime
  //
  //
  // final
  //     ↓
  // Assigned only once
  //
  //
  // const
  //     ↓
  // Compile-time constant
  //
  //
  // runtimeType
  //     ↓
  // Shows the runtime type of a value.


  // ============================================================
  // DAY 2 CORE EXAMPLE
  // ============================================================

  int age = 23;
  String name = "Naresh";
  double height = 5.5;
  bool isStudent = true;

  var city = "Dhangadhi";
  dynamic value = 100;

  final dob = DateTime.now();
  const country = "Nepal";

  print(age);
  print(name);
  print(height);
  print(isStudent);
  print(city);
  print(value);
  print(dob);
  print(country);
}

// var      → type inferred once
// dynamic  → type can change
// final    → assigned only once, runtime value allowed
// const    → compile-time constant

// int      → whole number
// double   → decimal number
// String   → text
// bool     → true / false

// runtimeType → tells the runtime type