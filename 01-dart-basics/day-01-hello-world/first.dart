void main() {
  print("Hello world!");
}


// ============================================================
// DART - DAY 1 NOTES
// BASICS + HELLO WORLD
// ============================================================


// ============================================================
// 1. FIRST DART PROGRAM
// ============================================================

void main() {
  print("Hello world!");
}


// Output:
// Hello world!


// ============================================================
// 2. main() FUNCTION
// ============================================================

// main() is the ENTRY POINT of a Dart program.
//
// Program execution starts from main().
//
// Syntax:
//
// void main() {
//   // statements
// }


// ============================================================
// 3. void
// ============================================================

// void means the function does not return a value.
//
// main() is declared as:
//
// void main()
//
// Meaning:
// main() does not return a value to the caller.


// ============================================================
// 4. print()
// ============================================================

// print() is used to display output on the console.
//
// Example:

void main() {
  print("Hello");
  print("Dart");
}

// Output:
// Hello
// Dart


// ============================================================
// 5. STRING
// ============================================================

// Text is called a String.
//
// Strings can be written using:
//
// "Double quotes"
// 'Single quotes'

void main() {
  print("Hello Dart");
  print('Hello Dart');
}


// ============================================================
// 6. STATEMENT
// ============================================================

// A statement is an instruction given to the program.
//
// Example:

print("Hello");


// Most Dart statements end with a semicolon:
//
// ;


// ============================================================
// 7. SEMICOLON (;)
// ============================================================

// Semicolon marks the end of a statement.
//
// Example:

print("Hello");
print("Dart");


// ============================================================
// 8. CURLY BRACES { }
// ============================================================

// Curly braces define a block of code.
//
// Example:

void main() {
  print("Hello");
}


// Everything between { and } belongs to main().


// ============================================================
// 9. PARENTHESES ( )
// ============================================================

// Parentheses are used with functions.
//
// Example:

print("Hello");


// print is the function name.
// ("Hello") is the argument passed to the function.


// ============================================================
// 10. COMMENTS
// ============================================================

// Single-line comment:
//
// This is a comment.


// Dart ignores comments during program execution.


// Multi-line comment:
//
// /*
/*
This is
a multi-line
comment.
*/
//


// ============================================================
// 11. CASE SENSITIVE
// ============================================================

// Dart is case-sensitive.
//
// These are different:
//
// print
// Print
// PRINT
//
// Correct:

print("Hello");


// Incorrect:
//
// Print("Hello");


// ============================================================
// 12. WHITESPACE AND INDENTATION
// ============================================================

// Spaces and indentation make code easier to read.
//
// Example:

void main() {
  print("Hello");
  print("Dart");
}


// ============================================================
// 13. MULTIPLE STATEMENTS
// ============================================================

// A function can contain multiple statements.

void main() {
  print("Hello");
  print("My name is Naresh");
  print("I am learning Dart");
}


// Output:
// Hello
// My name is Naresh
// I am learning Dart


// ============================================================
// 14. PRINT NUMBERS
// ============================================================

// print() can also print numbers.

void main() {
  print(10);
  print(20);
  print(10 + 20);
}


// Output:
// 10
// 20
// 30


// ============================================================
// 15. PRINT BOOLEAN VALUES
// ============================================================

void main() {
  print(true);
  print(false);
}


// Output:
// true
// false


// ============================================================
// 16. BASIC PROGRAM STRUCTURE
// ============================================================

void main() {

  // Statements go here.

  print("Hello world!");

}


// Structure:
//
// void
//   ↓
// main()
//   ↓
// {
//   ↓
// statements
//   ↓
// }


// ============================================================
// 17. HOW DART PROGRAM EXECUTION STARTS
// ============================================================

// When a Dart application runs:
//
// 1. Dart starts program execution.
// 2. It looks for main().
// 3. Execution begins inside main().
// 4. Statements execute from top to bottom.
//
// Example:

void main() {
  print("First");
  print("Second");
  print("Third");
}


// Output:
//
// First
// Second
// Third


// ============================================================
// 18. TOP-TO-BOTTOM EXECUTION
// ============================================================

// Dart normally executes statements sequentially.

void main() {
  print("A");
  print("B");
  print("C");
}


// Output:
//
// A
// B
// C


// ============================================================
// 19. BASIC TERMINAL COMMAND
// ============================================================

// Save the file as:
//
// main.dart
//
// Run it from the terminal:
//
// dart run main.dart
//
// Or:
//
// dart main.dart


// ============================================================
// 20. HELLO WORLD - FINAL EXAMPLE
// ============================================================

void main() {
  print("Hello world!");
}


// This is a complete and valid Dart program.


// ============================================================
// DAY 1 - QUICK SUMMARY
// ============================================================
//
// main()
//     -> Entry point of a Dart program.
//
// void
//     -> Function does not return a value.
//
// print()
//     -> Displays output.
//
// String
//     -> Text such as "Hello".
//
// ;
//     -> Ends a statement.
//
// { }
//     -> Defines a code block.
//
// ( )
//     -> Used with function calls.
//
// // 
//     -> Single-line comment.
//
// /* */
//     -> Multi-line comment.
//
// Dart
//     -> Case-sensitive.
//
// Program execution
//     -> Starts from main().
//
// ============================================================
// CORE PROGRAM TO REMEMBER
// ============================================================

void main() {
  print("Hello world!");
}