void main() {
  // ============================================================
  // DART NOTES: LOOPS
  // ============================================================
  //
  // A LOOP repeats a block of code multiple times.
  //
  // Main loops in Dart:
  //
  // 1. for loop
  // 2. while loop
  // 3. do-while loop
  // 4. for-in loop
  //
  // Control statements:
  //
  // 5. break
  // 6. continue
  // ============================================================


  // ============================================================
  // 1. FOR LOOP
  // ============================================================
  //
  // Used when we generally know how many times we want to loop.
  //
  // Syntax:
  //
  // for (initialization; condition; update) {
  //   // code
  // }


  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // Output:
  // 1
  // 2
  // 3
  // 4
  // 5
  //
  // Working:
  //
  // int i = 1  -> initialization
  // i <= 5     -> condition
  // i++        -> update
  //
  // Flow:
  //
  // initialize
  //     ↓
  // check condition
  //     ↓
  // execute body
  //     ↓
  // update
  //     ↓
  // check condition again


  // ============================================================
  // 2. FOR LOOP: 10 TO 1
  // ============================================================

  for (int i = 10; i >= 1; i--) {
    print(i);
  }

  // Output:
  // 10
  // 9
  // 8
  // ...
  // 1


  // ============================================================
  // 3. FOR LOOP WITH STEP
  // ============================================================
  //
  // We can increase/decrease by more than 1.

  for (int i = 0; i <= 10; i += 2) {
    print(i);
  }

  // Output:
  // 0
  // 2
  // 4
  // 6
  // 8
  // 10


  // ============================================================
  // 4. WHILE LOOP
  // ============================================================
  //
  // A while loop checks the condition BEFORE executing the body.
  //
  // Syntax:
  //
  // while (condition) {
  //   // code
  // }

  int count = 1;

  while (count <= 5) {
    print(count);
    count++;
  }

  // Output:
  // 1
  // 2
  // 3
  // 4
  // 5
  //
  // IMPORTANT:
  // Make sure the condition eventually becomes false.
  //
  // Otherwise, you can create an INFINITE LOOP.


  // ============================================================
  // 5. DO-WHILE LOOP
  // ============================================================
  //
  // A do-while loop executes the body FIRST,
  // then checks the condition.
  //
  // Syntax:
  //
  // do {
  //   // code
  // } while (condition);

  int number = 1;

  do {
    print(number);
    number++;
  } while (number <= 5);

  // Output:
  // 1
  // 2
  // 3
  // 4
  // 5


  // ============================================================
  // 6. WHILE VS DO-WHILE
  // ============================================================

  int a = 10;

  while (a < 5) {
    print("While");
  }

  // Nothing is printed.
  //
  // Why?
  // Condition is checked FIRST.
  // 10 < 5 -> false


  int b = 10;

  do {
    print("Do while");
  } while (b < 5);

  // "Do while" is printed once.
  //
  // Why?
  // Body executes FIRST.
  // Then condition is checked.


  // ============================================================
  // 7. FOR-IN LOOP
  // ============================================================
  //
  // Used to directly get each element from a collection.
  //
  // Very common with List, Set and other iterable collections.

  List<String> names = [
    "Naresh",
    "Ram",
    "Hari",
  ];

  for (String name in names) {
    print(name);
  }

  // Output:
  // Naresh
  // Ram
  // Hari
  //
  // You don't manually manage an index here.


  // ============================================================
  // 8. FOR-IN WITH LIST OF INTEGERS
  // ============================================================

  List<int> numbers = [10, 20, 30, 40];

  for (int number in numbers) {
    print(number);
  }


  // ============================================================
  // 9. FOR LOOP WITH LIST INDEX
  // ============================================================
  //
  // If you need the INDEX, use a normal for loop.

  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
  ];

  for (int i = 0; i < fruits.length; i++) {
    print("Index: $i, Value: ${fruits[i]}");
  }

  // Output:
  // Index: 0, Value: Apple
  // Index: 1, Value: Banana
  // Index: 2, Value: Mango


  // ============================================================
  // 10. BREAK
  // ============================================================
  //
  // break immediately TERMINATES the loop.

  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }

    print(i);
  }

  // Output:
  // 1
  // 2
  // 3
  // 4
  //
  // When i becomes 5:
  //
  // break -> loop completely stops.


  // ============================================================
  // 11. CONTINUE
  // ============================================================
  //
  // continue SKIPS the current iteration
  // and moves to the next iteration.

  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }

    print(i);
  }

  // Output:
  // 1
  // 2
  // 4
  // 5
  //
  // When i == 3:
  //
  // continue -> skip 3
  // loop continues with 4.


  // ============================================================
  // 12. BREAK VS CONTINUE
  // ============================================================
  //
  // break:
  //     Stops the ENTIRE loop.
  //
  // continue:
  //     Skips ONLY the current iteration.
  //
  //
  // break:
  //
  // 1
  // 2
  // 3
  // STOP
  //
  //
  // continue:
  //
  // 1
  // 2
  // SKIP 3
  // 4
  // 5


  // ============================================================
  // 13. LOOP + IF
  // ============================================================

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("$i is even");
    } else {
      print("$i is odd");
    }
  }

  // % gives the remainder.
  //
  // number % 2 == 0
  //     -> even
  //
  // number % 2 != 0
  //     -> odd


  // ============================================================
  // 14. NESTED LOOP
  // ============================================================
  //
  // A loop inside another loop is called a nested loop.

  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("i = $i, j = $j");
    }
  }

  // The inner loop completes all its iterations
  // for every one iteration of the outer loop.


  // ============================================================
  // 15. MULTIPLICATION TABLE
  // ============================================================

  int table = 5;

  for (int i = 1; i <= 10; i++) {
    print("$table x $i = ${table * i}");
  }


  // ============================================================
  // 16. INFINITE LOOP
  // ============================================================
  //
  // Be careful with loops whose condition never becomes false.
  //
  // Example:
  //
  // int x = 1;
  //
  // while (x <= 5) {
  //   print(x);
  // }
  //
  // This is an infinite loop because x never changes.
  //
  // Correct:
  //
  // int x = 1;
  //
  // while (x <= 5) {
  //   print(x);
  //   x++;
  // }


  // ============================================================
  // 17. LOOP TYPES - QUICK COMPARISON
  // ============================================================
  //
  // FOR:
  //     Best when the number of iterations is known.
  //
  // WHILE:
  //     Condition is checked BEFORE the body.
  //
  // DO-WHILE:
  //     Body executes at least ONCE because condition is
  //     checked AFTER the body.
  //
  // FOR-IN:
  //     Used to directly iterate over collection elements.


  // ============================================================
  // 18. CORE LOOP SYNTAX
  // ============================================================
  //
  // FOR:
  //
  // for (initialization; condition; update) {
  //   // code
  // }
  //
  //
  // WHILE:
  //
  // while (condition) {
  //   // code
  // }
  //
  //
  // DO-WHILE:
  //
  // do {
  //   // code
  // } while (condition);
  //
  //
  // FOR-IN:
  //
  // for (var element in collection) {
  //   // code
  // }


  // ============================================================
  // 19. MOST IMPORTANT POINTS
  // ============================================================
  //
  // for       -> initialization + condition + update
  //
  // while     -> condition first
  //
  // do-while  -> body first, condition later
  //
  // for-in    -> directly gets collection elements
  //
  // break     -> completely exits the loop
  //
  // continue  -> skips current iteration
  //
  // ++        -> increase by 1
  //
  // --        -> decrease by 1
  //
  // %         -> remainder, commonly useful for even/odd
  //
  // ============================================================
}