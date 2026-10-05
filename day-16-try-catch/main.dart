void main() {

  // ============================================================
  // EXCEPTION HANDLING IN DART
  // ============================================================

  // Exception handling is used to handle unexpected problems
  // that happen while a program is running.
  //
  // Without exception handling:
  //     Error occurs → program may stop/crash
  //
  // With exception handling:
  //     Error occurs → we catch it → handle it gracefully
  //
  // Example situations:
  //     - Invalid user input
  //     - Division by zero
  //     - Invalid number conversion
  //     - File operation failure
  //     - Network/API failure
  //     - Database failure
  //     - Authentication failure
  //
  // Main keywords:
  //
  //     try
  //     catch
  //     on
  //     finally
  //     throw
  //
  // ============================================================
  // 1. try
  // ============================================================

  // Code that may produce an exception is normally placed
  // inside the try block.

  try {
    int result = 10 ~/ 2;
    print(result);
  } catch (e) {
    print("Something went wrong");
  }


  // ============================================================
  // 2. catch
  // ============================================================

  // catch is used to catch an exception thrown from try.
  //
  // Syntax:
  //
  // try {
  //   risky code
  // } catch (e) {
  //   handle error
  // }
  //
  // "e" contains the exception/error object.

  try {
    int number = int.parse("abc");
    print(number);
  } catch (e) {
    print("Invalid number");
    print(e);
  }


  // ============================================================
  // 3. try + catch example
  // ============================================================

  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Cannot divide by zero");
  }


  // ============================================================
  // 4. catch STACK TRACE
  // ============================================================

  // Sometimes we also need to know WHERE the exception happened.
  //
  // For debugging, we can capture the StackTrace.

  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e, stackTrace) {
    print("Exception: $e");
    print("StackTrace: $stackTrace");
  }

  // e
  // → tells us WHAT went wrong.
  //
  // stackTrace
  // → helps us understand WHERE the problem occurred.


  // ============================================================
  // 5. on
  // ============================================================

  // "on" is used when we know the specific exception type
  // that we want to handle.
  //
  // Example:
  //
  // FormatException
  // IntegerDivisionByZeroException
  //
  // Syntax:
  //
  // try {
  //   ...
  // } on ExceptionType {
  //   ...
  // }

  try {
    int number = int.parse("hello");
    print(number);
  } on FormatException {
    print("Please provide a valid number");
  }


  // ============================================================
  // 6. on + catch
  // ============================================================

  // We can use "on" with "catch".
  //
  // This allows us to:
  //
  //     1. Check a specific exception type.
  //     2. Get the actual exception object.
  //
  // Syntax:
  //
  // on ExceptionType catch (e) {
  //     ...
  // }

  try {
    int number = int.parse("hello");
    print(number);
  } on FormatException catch (e) {
    print("Format error: $e");
  }


  // ============================================================
  // 7. Multiple exception types
  // ============================================================

  // We can have multiple "on" blocks.
  //
  // This is useful when different exceptions require
  // different handling.

  try {
    int result = 10 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  } on FormatException {
    print("Invalid format");
  } catch (e) {
    print("Unknown exception: $e");
  }


  // ============================================================
  // 8. ORDER OF EXCEPTION HANDLERS
  // ============================================================

  // Specific exception handlers should come before
  // general handlers.
  //
  // Example:
  //
  // on FormatException
  // catch (e)
  //
  // FormatException is specific.
  // catch (e) is general.
  //
  // Therefore:
  //
  //     Specific → General
  //
  // Not:
  //
  //     General → Specific
  //
  // because the general catch may handle the exception first.


  // ============================================================
  // 9. finally
  // ============================================================

  // finally is executed whether an exception occurs or not.
  //
  // It is commonly used for cleanup operations.
  //
  // Example:
  //
  //     - Closing a resource
  //     - Cleaning temporary state
  //     - Releasing something
  //     - Logging completion
  //
  // Syntax:
  //
  // try {
  //
  // } catch (e) {
  //
  // } finally {
  //
  // }

  try {
    print("Trying something...");
  } catch (e) {
    print("Error occurred");
  } finally {
    print("This always runs");
  }


  // ============================================================
  // 10. finally when exception occurs
  // ============================================================

  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Error handled");
  } finally {
    print("Cleanup completed");
  }

  // Output:
  //
  // Error handled
  // Cleanup completed


  // ============================================================
  // 11. try + finally WITHOUT catch
  // ============================================================

  // finally can also be used without catch.

  try {
    print("Executing...");
  } finally {
    print("Cleanup");
  }


  // ============================================================
  // 12. throw
  // ============================================================

  // "throw" is used to manually create/raise an exception.
  //
  // We use throw when our application detects an invalid
  // condition.
  //
  // Example:
  //
  // if (age < 18) {
  //     throw Exception("User must be 18 or older");
  // }

  try {

    int age = 15;

    if (age < 18) {
      throw Exception("User must be 18 or older");
    }

    print("User is allowed");

  } catch (e) {
    print(e);
  }


  // ============================================================
  // 13. throw is important in real applications
  // ============================================================

  // We don't only handle errors generated by Dart.
  //
  // Sometimes OUR application detects a problem.
  //
  // Example:
  //
  //     User not found
  //     Invalid password
  //     Insufficient balance
  //     Invalid order
  //     Unauthorized operation
  //
  // We can throw an exception ourselves.

  try {

    String username = "";

    if (username.isEmpty) {
      throw Exception("Username cannot be empty");
    }

  } catch (e) {
    print(e);
  }


  // ============================================================
  // 14. RETHROW
  // ============================================================

  // "rethrow" is used when we catch an exception but want
  // to send the SAME exception to another layer.
  //
  // This is very important in layered applications.
  //
  // Example idea:
  //
  // Repository
  //      ↓
  // Service
  //      ↓
  // Controller/UI
  //
  // A lower layer may log/process the exception and then
  // rethrow it so the upper layer can decide what to do.

  try {

    try {
      throw Exception("Database error");
    } catch (e) {
      print("Logging error...");
      rethrow;
    }

  } catch (e) {
    print("Handled at upper level: $e");
  }

  // Difference:
  //
  // throw
  // → creates/throws an exception.
  //
  // rethrow
  // → sends the currently caught exception again.
  //
  // IMPORTANT:
  // rethrow preserves the original exception's stack trace.


  // ============================================================
  // 15. Exception vs Error
  // ============================================================

  // Dart has both Exception and Error concepts.
  //
  // Exception:
  //     Usually represents a problem that an application
  //     can reasonably handle.
  //
  // Error:
  //     Usually represents a programming/runtime problem
  //     that should not normally be recovered from.
  //
  // Examples of exceptions:
  //
  //     FormatException
  //     IOException
  //     custom application exceptions
  //
  // Examples of errors:
  //
  //     AssertionError
  //     TypeError
  //
  // In application code, we generally catch expected
  // exceptions rather than blindly catching every Error.


  // ============================================================
  // 16. CUSTOM EXCEPTION
  // ============================================================

  // In real applications, we often create our own exception
  // classes so that the error has meaningful business meaning.
  //
  // Example:
  //
  //     InvalidAgeException
  //     UserNotFoundException
  //     UnauthorizedException
  //     InsufficientBalanceException
  //
  // Example class:

  try {

    int balance = 100;

    if (balance < 500) {
      throw InsufficientBalanceException(
        "Insufficient balance",
      );
    }

  } on InsufficientBalanceException catch (e) {
    print(e);
  }


  // ============================================================
  // 17. CUSTOM EXCEPTION WITH DATA
  // ============================================================

  // Custom exceptions can contain useful information.

  try {

    int balance = 200;

    if (balance < 500) {
      throw InsufficientBalanceException(
        "Required balance is 500, available balance is $balance",
      );
    }

  } on InsufficientBalanceException catch (e) {
    print("Payment failed: $e");
  }


  // ============================================================
  // 18. INDUSTRY-STYLE FUNCTION
  // ============================================================

  // Instead of putting everything inside main(),
  // real applications usually separate business logic
  // into functions/classes.

  try {

    String result = login("naresh", "1234");

    print(result);

  } on InvalidCredentialsException catch (e) {

    print("Login failed: $e");

  } catch (e) {

    print("Unexpected error: $e");

  }


  // ============================================================
  // 19. IMPORTANT INDUSTRY PATTERN
  // ============================================================

  // A good application should:
  //
  //     1. Detect the problem.
  //     2. Throw a meaningful exception.
  //     3. Catch it at the appropriate layer.
  //     4. Log useful technical information.
  //     5. Show a safe/user-friendly message.
  //
  // Example:
  //
  // Database failure
  //       ↓
  // Repository detects failure
  //       ↓
  // Repository throws DatabaseException
  //       ↓
  // Service/controller handles it
  //       ↓
  // Log technical details
  //       ↓
  // User sees:
  // "Something went wrong. Please try again."


  // ============================================================
  // 20. DON'T DO THIS
  // ============================================================

  // Avoid empty catch blocks.
  //
  // BAD:
  //
  // try {
  //   ...
  // } catch (e) {
  // }
  //
  // Why?
  //
  // The exception disappears silently.
  //
  // This makes debugging extremely difficult.


  // ============================================================
  // 21. DON'T SHOW TECHNICAL ERROR DIRECTLY TO USERS
  // ============================================================

  // BAD:
  //
  // print(databaseExceptionStackTrace);
  //
  // A user generally doesn't need:
  //
  //     SQL details
  //     Stack traces
  //     Internal paths
  //     Secret information
  //
  // Instead:
  //
  // Technical log:
  //     Database connection failed...
  //
  // User message:
  //     "Something went wrong. Please try again."


  // ============================================================
  // 22. DON'T CATCH EVERYTHING WITHOUT A REASON
  // ============================================================

  // BAD STYLE:
  //
  // try {
  //     ...
  // } catch (e) {
  //     print("Error");
  // }
  //
  // everywhere in the application.
  //
  // Catch an exception when you can actually:
  //
  //     - recover from it
  //     - convert it
  //     - add context
  //     - log it
  //     - return a meaningful result
  //
  // Otherwise, allow it to propagate to a layer that can
  // handle it properly.


  // ============================================================
  // 23. NULL SAFETY IS NOT EXCEPTION HANDLING
  // ============================================================

  // Dart null safety prevents many null-related problems
  // at compile time.
  //
  // Example:
  //
  // String name = "Naresh";
  //
  // But null safety does NOT eliminate all runtime errors.
  //
  // Runtime problems can still happen:
  //
  //     API failure
  //     invalid parsing
  //     database failure
  //     file failure
  //     business rule violation
  //
  // Therefore:
  //
  // Null Safety ≠ Exception Handling


  // ============================================================
  // 24. COMMON EXCEPTION TYPES
  // ============================================================

  // Some commonly encountered Dart exceptions/errors include:
  //
  // FormatException
  // → Invalid format or parsing problem.
  //
  // IntegerDivisionByZeroException
  // → Integer division by zero.
  //
  // StateError
  // → Operation is invalid for the current state.
  //
  // RangeError
  // → Value/index is outside the valid range.
  //
  // ArgumentError
  // → Invalid argument passed to a function.
  //
  // Exception
  // → General exception type.
  //
  // Always prefer handling a specific exception when
  // you know what you are expecting.


  // ============================================================
  // 25. REAL-WORLD EXAMPLE
  // ============================================================

  // Imagine a banking application.
  //
  // User requests:
  //
  //     withdraw(5000)
  //
  // Account balance:
  //
  //     1000
  //
  // Business rule:
  //
  //     balance < amount
  //
  // Application can throw:
  //
  //     InsufficientBalanceException
  //
  // Then the UI can show:
  //
  //     "Insufficient balance."
  //
  // This is much better than allowing the application
  // to fail unexpectedly.


  // ============================================================
  // 26. COMPLETE INDUSTRY-STYLE FLOW
  // ============================================================

  try {

    withdraw(5000, 1000);

    print("Withdrawal successful");

  } on InsufficientBalanceException catch (e) {

    print("Transaction failed: $e");

  } catch (e, stackTrace) {

    // Unexpected error.
    //
    // In a real application:
    //     log e
    //     log stackTrace
    //     send to monitoring system if appropriate

    print("Unexpected error occurred");

  } finally {

    // Example:
    // stop loading indicator
    // close resource
    // cleanup temporary state

    print("Transaction process completed");
  }
}


// ============================================================
// CUSTOM EXCEPTION CLASSES
// ============================================================

class InsufficientBalanceException implements Exception {

  final String message;

  InsufficientBalanceException(this.message);

  @override
  String toString() {
    return message;
  }
}


class InvalidCredentialsException implements Exception {

  final String message;

  InvalidCredentialsException(this.message);

  @override
  String toString() {
    return message;
  }
}


// ============================================================
// FUNCTIONS
// ============================================================

String login(String username, String password) {

  if (username.isEmpty || password.isEmpty) {
    throw InvalidCredentialsException(
      "Username or password cannot be empty",
    );
  }

  if (username != "naresh" || password != "1234") {
    throw InvalidCredentialsException(
      "Invalid username or password",
    );
  }

  return "Login successful";
}


void withdraw(int amount, int balance) {

  if (amount <= 0) {
    throw ArgumentError("Amount must be greater than zero");
  }

  if (amount > balance) {
    throw InsufficientBalanceException(
      "Insufficient balance",
    );
  }

  print("Processing withdrawal...");
}