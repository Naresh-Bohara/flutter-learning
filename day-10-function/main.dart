void main() {

  // ============================================================
  // DART - DAY 6
  // FUNCTIONS
  // ============================================================


  // ============================================================
  // 1. WHAT IS A FUNCTION?
  // ============================================================

  // A function is a reusable block of code
  // that performs a specific task.
  //
  // Instead of writing the same code repeatedly,
  // we can put it inside a function and call it whenever needed.


  // ============================================================
  // 2. BASIC FUNCTION
  // ============================================================

  void greet() {
    print("Hello Naresh");
  }

  // Calling the function
  greet();

  // Output:
  // Hello Naresh


  // ============================================================
  // 3. FUNCTION WITH PARAMETERS
  // ============================================================

  void greetUser(String name) {
    print("Hello $name");
  }

  greetUser("Naresh");
  greetUser("Hari");

  // Output:
  // Hello Naresh
  // Hello Hari


  // ============================================================
  // 4. MULTIPLE PARAMETERS
  // ============================================================

  void add(int a, int b) {
    print(a + b);
  }

  add(10, 20);

  // Output:
  // 30


  // ============================================================
  // 5. RETURN VALUE
  // ============================================================

  // A function can return a value
  // using the return keyword.

  int addNumbers(int a, int b) {
    return a + b;
  }

  int result = addNumbers(10, 20);

  print(result);

  // Output:
  // 30


  // ============================================================
  // 6. VOID VS RETURN
  // ============================================================

  // void:
  // Performs a task but does not return a value.

  void greet() {
    print("Hello");
  }


  // return:
  // Sends a value back to the caller.

  int square(int number) {
    return number * number;
  }

  print(square(5));

  // 25


  // ============================================================
  // 7. FUNCTION WITH NO PARAMETER AND RETURN VALUE
  // ============================================================

  String getName() {
    return "Naresh";
  }

  print(getName());

  // Naresh


  // ============================================================
  // 8. FUNCTION WITH PARAMETER AND RETURN VALUE
  // ============================================================

  int multiply(int a, int b) {
    return a * b;
  }

  int answer = multiply(5, 4);  

  print(answer);

  // 20


  // ============================================================
  // 9. ARROW FUNCTION
  // ============================================================

  // For a function containing only ONE expression,
  // we can use => instead of { } and return.

  int square(int number) => number * number;

  print(square(5));

  // 25

  // Same as:
  //
  // int square(int number) {
  //   return number * number;
  // }


  // ============================================================
  // 10. OPTIONAL POSITIONAL PARAMETER
  // ============================================================

  // [] makes a parameter optional.

  void greet(String name, [String? message]) {
    print("$name ${message ?? "Hello"}");
  }

  greet("Naresh");

  greet("Naresh", "Good Morning");


  // ============================================================
  // 11. OPTIONAL NAMED PARAMETER
  // ============================================================

  // {} creates named parameters.

  void student({
    required String name,
    int age = 18,
  }) {
    print("Name: $name");
    print("Age: $age");
  }

  student(name: "Naresh");

  student(
    name: "Hari",
    age: 25,
  );


  // ============================================================
  // 12. required NAMED PARAMETER
  // ============================================================

  // required means the caller MUST provide the value.

  void user({
    required String name,
    required int age,
  }) {
    print("$name is $age years old");
  }

  user(
    name: "Naresh",
    age: 25,
  );


  // ============================================================
  // 13. DEFAULT PARAMETER VALUE
  // ============================================================

  void greetPerson(
    String name, {
    String country = "Nepal",
  }) {
    print("$name is from $country");
  }

  greetPerson("Naresh");

  greetPerson(
    "John",
    country: "India",
  );


  // ============================================================
  // 14. FUNCTION AS A VARIABLE
  // ============================================================

  // A function can be stored inside a variable.

  int Function(int, int) add = (a, b) {
    return a + b;
  };

  print(add(10, 20));

  // 30


  // ============================================================
  // 15. ANONYMOUS FUNCTION
  // ============================================================

  // A function without a name is called
  // an anonymous function.

  var multiply = (int a, int b) {
    return a * b;
  };

  print(multiply(5, 4));

  // 20


  // ============================================================
  // 16. FUNCTION AS PARAMETER
  // ============================================================

  // A function can be passed to another function.

  void calculate(
    int a,
    int b,
    int Function(int, int) operation,
  ) {
    print(operation(a, b));
  }

  calculate(10, 20, (a, b) => a + b);

  // 30

  calculate(10, 20, (a, b) => a * b);

  // 200


  // ============================================================
  // 17. IMPORTANT FUNCTION CONCEPT
  // ============================================================

  // Function:
  //
  // Input -> Processing -> Output
  //
  // Example:
  //
  // add(10, 20)
  //
  // 10, 20 -> inputs
  // addition -> processing
  // 30 -> output


  // ============================================================
  // 18. FUNCTION CORE SYNTAX
  // ============================================================

  // returnType functionName(parameters) {
  //   // code
  //   return value;
  // }
  //
  // Example:
  //
  // int add(int a, int b) {
  //   return a + b;
  // }


  // ============================================================
  // DAY 6 FINAL SUMMARY
  // ============================================================

  // Function
  //     -> reusable block of code
  //
  // Parameter
  //     -> input received by function
  //
  // Argument
  //     -> actual value passed to function
  //
  // return
  //     -> sends value back
  //
  // void
  //     -> function returns no value
  //
  // =>
  //     -> short/arrow function
  //
  // []
  //     -> optional positional parameter
  //
  // {}
  //     -> named parameter
  //
  // required
  //     -> named parameter must be provided
  //
  // default value
  //     -> value used when argument is not provided
  //
  // anonymous function
  //     -> function without a name
  //
  // Function as parameter
  //     -> passing a function to another function

}