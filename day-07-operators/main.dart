void main() {
  // ============================================================
  // DART OPERATORS - COMPLETE NOTES
  // ============================================================
  //
  // Operators are symbols/keywords used to perform operations
  // on values and variables.
  //
  // Main types:
  //
  // 1. Arithmetic Operators
  // 2. Relational / Comparison Operators
  // 3. Increment / Decrement Operators
  // 4. Assignment Operators
  // 5. Logical Operators
  // 6. Type Test Operators
  // 7. Conditional Operators
  // 8. Null-aware Operators
  // 9. Bitwise Operators
  // 10. Cascade Operator
  // 11. Spread Operators
  // ============================================================


  // ============================================================
  // 1. ARITHMETIC OPERATORS
  // ============================================================
  //
  // Used for mathematical calculations.
  //
  // +   Addition
  // -   Subtraction
  // *   Multiplication
  // /   Division
  // ~/  Integer division
  // %   Modulus / Remainder
  // -   Unary minus


  int a = 10;
  int b = 3;

  print(a + b);  // 13
  print(a - b);  // 7
  print(a * b);  // 30
  print(a / b);  // 3.3333333333333335
  print(a ~/ b); // 3
  print(a % b);  // 1

  // Unary minus
  print(-a);     // -10


  // ============================================================
  // 2. RELATIONAL / COMPARISON OPERATORS
  // ============================================================
  //
  // Used to compare two values.
  //
  // Result is always bool: true or false.
  //
  // ==   Equal to
  // !=   Not equal to
  // >    Greater than
  // <    Less than
  // >=   Greater than or equal to
  // <=   Less than or equal to


  int x = 10;
  int y = 20;

  print(x == y); // false
  print(x != y); // true
  print(x > y);  // false
  print(x < y);  // true
  print(x >= y); // false
  print(x <= y); // true


  // ============================================================
  // 3. INCREMENT / DECREMENT OPERATORS
  // ============================================================
  //
  // ++ increases a value by 1.
  // -- decreases a value by 1.
  //
  // ++variable  -> prefix increment
  // variable++  -> postfix increment
  //
  // --variable  -> prefix decrement
  // variable--  -> postfix decrement


  int count = 5;

  count++;
  print(count); // 6

  count--;
  print(count); // 5


  // PREFIX
  //
  // ++count:
  // First increases the value,
  // then uses the value.

  int n = 5;

  print(++n); // 6


  // POSTFIX
  //
  // n++:
  // First uses the current value,
  // then increases it.

  int m = 5;

  print(m++); // 5
  print(m);   // 6


  // PREFIX DECREMENT

  int p = 5;

  print(--p); // 4


  // POSTFIX DECREMENT

  int q = 5;

  print(q--); // 5
  print(q);   // 4


  // ============================================================
  // 4. ASSIGNMENT OPERATORS
  // ============================================================
  //
  // Used to assign values to variables.
  //
  // =     Simple assignment
  // +=    Add and assign
  // -=    Subtract and assign
  // *=    Multiply and assign
  // /=    Divide and assign
  // ~/=   Integer divide and assign
  // %=    Modulus and assign
  //
  // ??=   Assign only if value is null


  int value = 10;

  value = 20;
  print(value); // 20

  value += 5;
  print(value); // 25

  value -= 5;
  print(value); // 20

  value *= 2;
  print(value); // 40

  value ~/= 4;
  print(value); // 10

  value %= 3;
  print(value); // 1


  // /= produces a double.

  double price = 10;

  price /= 2;

  print(price); // 5.0


  // ============================================================
  // 5. NULL-AWARE ASSIGNMENT OPERATOR
  // ============================================================
  //
  // ??=
  //
  // Assigns a value ONLY when the variable is null.


  String? name;

  name ??= "Naresh";

  print(name); // Naresh

  // Since name already has a value,
  // this will NOT replace it.

  name ??= "Hari";

  print(name); // Naresh


  // ============================================================
  // 6. LOGICAL OPERATORS
  // ============================================================
  //
  // Used with boolean values.
  //
  // &&   AND
  // ||   OR
  // !    NOT


  bool isStudent = true;
  bool hasID = true;

  // AND
  //
  // Both conditions must be true.

  print(isStudent && hasID); // true


  // OR
  //
  // At least one condition must be true.

  bool isAdmin = false;
  bool isTeacher = true;

  print(isAdmin || isTeacher); // true


  // NOT
  //
  // Reverses boolean value.

  print(!isStudent); // false


  // ============================================================
  // LOGICAL TRUTH TABLE
  // ============================================================
  //
  // AND (&&)
  //
  // true  && true  = true
  // true  && false = false
  // false && true  = false
  // false && false = false
  //
  //
  // OR (||)
  //
  // true  || true  = true
  // true  || false = true
  // false || true  = true
  // false || false = false
  //
  //
  // NOT (!)
  //
  // !true  = false
  // !false = true


  // ============================================================
  // 7. TYPE TEST OPERATORS
  // ============================================================
  //
  // is
  // is!
  //
  // Used to check the type of a value.


  dynamic data = "Naresh";

  print(data is String); // true
  print(data is int);    // false

  print(data is! int);   // true


  // ============================================================
  // 8. CONDITIONAL OPERATOR
  // ============================================================
  //
  // condition ? valueIfTrue : valueIfFalse
  //
  // Also called the ternary operator.


  int age = 25;

  String result = age >= 18 ? "Adult" : "Minor";

  print(result); // Adult


  // Without ternary:

  String result2;

  if (age >= 18) {
    result2 = "Adult";
  } else {
    result2 = "Minor";
  }

  print(result2);


  // ============================================================
  // 9. NULL-AWARE OPERATORS
  // ============================================================
  //
  // ?
  // ??
  // ?.
  // ??=
  //
  // Mainly used when dealing with nullable values.


  // ------------------------------------------------------------
  // ?. NULL-AWARE ACCESS
  // ------------------------------------------------------------
  //
  // Calls/accesses something only if the object is not null.

  String? username;

  print(username?.length); // null


  username = "Naresh";

  print(username?.length); // 6


  // ------------------------------------------------------------
  // ?? NULL-COALESCING OPERATOR
  // ------------------------------------------------------------
  //
  // If left side is not null -> use left side.
  // If left side is null -> use right side.


  String? userName;

  print(userName ?? "Guest"); // Guest

  userName = "Naresh";

  print(userName ?? "Guest"); // Naresh


  // ------------------------------------------------------------
  // ??=
  // ------------------------------------------------------------
  //
  // Assign only if variable is null.

  String? city;

  city ??= "Dhangadhi";

  print(city); // Dhangadhi


  // ============================================================
  // 10. BITWISE OPERATORS
  // ============================================================
  //
  // Work at the binary/bit level.
  //
  // &    Bitwise AND
  // |    Bitwise OR
  // ^    Bitwise XOR
  // ~    Bitwise NOT
  // <<   Left shift
  // >>   Right shift
  //
  // These are mainly used in low-level programming,
  // binary manipulation, flags, networking, etc.


  int bitA = 5; // 0101
  int bitB = 3; // 0011

  print(bitA & bitB); // 1
  print(bitA | bitB); // 7
  print(bitA ^ bitB); // 6
  print(~bitA);       // -6

  print(bitA << 1);   // 10
  print(bitA >> 1);   // 2


  // ============================================================
  // 11. CASCADE OPERATOR
  // ============================================================
  //
  // .. and ?..
  //
  // Allows multiple operations on the same object.


  var numbers = <int>[];

  numbers
    ..add(10)
    ..add(20)
    ..add(30);

  print(numbers); // [10, 20, 30]


  // ============================================================
  // 12. SPREAD OPERATORS
  // ============================================================
  //
  // ...   Spread
  // ...?  Null-aware spread
  //
  // Used to insert elements of one collection into another.


  List<int> first = [1, 2, 3];
  List<int> second = [4, 5, 6];

  List<int> all = [
    ...first,
    ...second,
  ];

  print(all); // [1, 2, 3, 4, 5, 6]


  // NULL-AWARE SPREAD
  //
  // ...? does not add anything if the collection is null.

  List<int>? optionalNumbers;

  List<int> numbers2 = [
    ...?optionalNumbers,
    10,
    20,
  ];

  print(numbers2); // [10, 20]


  // ============================================================
  // 13. INDEX / INDEX-ACCESS OPERATOR
  // ============================================================
  //
  // [] is used to access elements from List, Map, etc.


  List<String> skills = [
    "Dart",
    "Java",
    "NestJS",
  ];

  print(skills[0]); // Dart
  print(skills[1]); // Java


  Map<String, String> capitals = {
    "Nepal": "Kathmandu",
    "India": "Delhi",
  };

  print(capitals["Nepal"]); // Kathmandu


  // ============================================================
  // 14. FUNCTION CALL OPERATOR
  // ============================================================
  //
  // () is used to call a function.


  void greet() {
    print("Hello");
  }

  greet();


  // ============================================================
  // 15. MEMBER ACCESS OPERATOR
  // ============================================================
  //
  // . is used to access properties and methods of an object.


  String text = "hello";

  print(text.length);       // 5
  print(text.toUpperCase()); // HELLO


  // ============================================================
  // 16. NULL-ASSERTION OPERATOR
  // ============================================================
  //
  // ! tells Dart:
  //
  // "I know this value is NOT null."
  //
  // Use carefully. If the value is actually null at runtime,
  // the program will throw an error.


  String? nullableName = "Naresh";

  print(nullableName!.length); // 6


  // ============================================================
  // QUICK OPERATOR SUMMARY
  // ============================================================
  //
  // ARITHMETIC
  // +    Addition
  // -    Subtraction
  // *    Multiplication
  // /    Division
  // ~/   Integer division
  // %    Remainder
  //
  // COMPARISON
  // ==   Equal
  // !=   Not equal
  // >    Greater than
  // <    Less than
  // >=   Greater/equal
  // <=   Less/equal
  //
  // INCREMENT / DECREMENT
  // ++   Increase by 1
  // --   Decrease by 1
  //
  // ASSIGNMENT
  // =    Assign
  // +=   Add and assign
  // -=   Subtract and assign
  // *=   Multiply and assign
  // /=   Divide and assign
  // ~/=  Integer divide and assign
  // %=   Remainder and assign
  // ??=  Assign if null
  //
  // LOGICAL
  // &&   AND
  // ||   OR
  // !    NOT
  //
  // TYPE TEST
  // is   Type check
  // is!  Type is NOT
  //
  // CONDITIONAL
  // ? :  Ternary operator
  //
  // NULL-AWARE
  // ?.   Null-aware access
  // ??   Default if null
  // ??=  Assign if null
  // !    Null assertion
  //
  // BITWISE
  // &    Bitwise AND
  // |    Bitwise OR
  // ^    Bitwise XOR
  // ~    Bitwise NOT
  // <<   Left shift
  // >>   Right shift
  //
  // COLLECTION / OBJECT
  // []   Index access
  // .    Member access
  // ()   Function call
  // ..   Cascade
  // ?..  Null-aware cascade
  // ...  Spread
  // ...? Null-aware spread
  //
  // ============================================================
  // MOST IMPORTANT FOR BEGINNERS:
  //
  // Arithmetic    -> calculations
  // Comparison    -> compare values
  // Logical       -> combine conditions
  // Assignment    -> assign/update values
  // ++ / --       -> increase/decrease by 1
  // Ternary       -> short if/else
  // ?? / ?.       -> handle null
  // is / is!      -> check type
  // ============================================================
}