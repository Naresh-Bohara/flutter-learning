void main() {
  // ============================================================
  // DART NOTES: INCREMENT / DECREMENT + IF / ELSE IF / ELSE
  // ============================================================


  // ============================================================
  // 1. INCREMENT OPERATOR (++)
  // ============================================================

  // ++ increases a variable's value by 1.

  int a = 5;

  a++; // Same as: a = a + 1

  print(a); // 6


  // ------------------------------------------------------------
  // POST-INCREMENT: variable++
  // ------------------------------------------------------------

  int x = 5;

  int result1 = x++;

  // First use x's current value
  // Then increase x by 1

  print(result1); // 5
  print(x);       // 6


  // ------------------------------------------------------------
  // PRE-INCREMENT: ++variable
  // ------------------------------------------------------------

  int y = 5;

  int result2 = ++y;

  // First increase y by 1
  // Then use the new value

  print(result2); // 6
  print(y);       // 6


  // IMPORTANT:
  //
  // x++  -> use first, increase later
  // ++x  -> increase first, use later


  // ============================================================
  // 2. DECREMENT OPERATOR (--)
  // ============================================================

  // -- decreases a variable's value by 1.

  int b = 5;

  b--; // Same as: b = b - 1

  print(b); // 4


  // ------------------------------------------------------------
  // POST-DECREMENT: variable--
  // ------------------------------------------------------------

  int p = 5;

  int result3 = p--;

  // First use p's current value
  // Then decrease p by 1

  print(result3); // 5
  print(p);       // 4


  // ------------------------------------------------------------
  // PRE-DECREMENT: --variable
  // ------------------------------------------------------------

  int q = 5;

  int result4 = --q;

  // First decrease q by 1
  // Then use the new value

  print(result4); // 4
  print(q);       // 4


  // IMPORTANT:
  //
  // x--  -> use first, decrease later
  // --x  -> decrease first, use later


  // ============================================================
  // 3. SIMPLE IF
  // ============================================================

  int age = 20;

  if (age >= 18) {
    print("Adult");
  }

  // if condition is true -> code inside {} executes.
  // if condition is false -> code inside {} is skipped.


  // ============================================================
  // 4. IF - ELSE
  // ============================================================

  int number = 10;

  if (number > 0) {
    print("Positive");
  } else {
    print("Zero or negative");
  }

  // if      -> executes when condition is true
  // else    -> executes when condition is false


  // ============================================================
  // 5. IF - ELSE IF - ELSE
  // ============================================================

  int marks = 75;

  if (marks >= 80) {
    print("A");
  } else if (marks >= 70) {
    print("B");
  } else if (marks >= 60) {
    print("C");
  } else if (marks >= 50) {
    print("D");
  } else {
    print("Fail");
  }

  // Dart checks conditions from TOP to BOTTOM.
  //
  // The first true condition is executed.
  // After one condition executes, the remaining else-if
  // conditions are skipped.


  // ============================================================
  // 6. MULTIPLE CONDITIONS USING && (AND)
  // ============================================================

  int studentAge = 20;
  bool hasId = true;

  if (studentAge >= 18 && hasId) {
    print("Allowed");
  } else {
    print("Not allowed");
  }

  // && means BOTH conditions must be true.


  // ============================================================
  // 7. MULTIPLE CONDITIONS USING || (OR)
  // ============================================================

  bool isAdmin = false;
  bool isManager = true;

  if (isAdmin || isManager) {
    print("Has permission");
  } else {
    print("No permission");
  }

  // || means AT LEAST ONE condition must be true.


  // ============================================================
  // 8. IF WITH ==, !=, >, <, >=, <=
  // ============================================================

  int value = 10;

  if (value == 10) {
    print("Equal to 10");
  }

  if (value != 5) {
    print("Not equal to 5");
  }

  if (value > 5) {
    print("Greater than 5");
  }

  if (value < 20) {
    print("Less than 20");
  }

  if (value >= 10) {
    print("Greater than or equal to 10");
  }

  if (value <= 10) {
    print("Less than or equal to 10");
  }


  // ============================================================
  // 9. NESTED IF
  // ============================================================

  int userAge = 25;
  bool loggedIn = true;

  if (loggedIn) {
    if (userAge >= 18) {
      print("Adult user is logged in");
    }
  }

  // An if can exist inside another if.
  // This is called a nested if.


  // ============================================================
  // 10. IF + INCREMENT
  // ============================================================

  int count = 5;

  if (count < 10) {
    count++;
  }

  print(count); // 6


  // ============================================================
  // 11. IF + DECREMENT
  // ============================================================

  int score = 5;

  if (score > 0) {
    score--;
  }

  print(score); // 4


  // ============================================================
  // 12. IMPORTANT DIFFERENCE: ++x VS x++
  // ============================================================

  int n = 10;

  print(n++); // 10
  print(n);   // 11

  int m = 10;

  print(++m); // 11
  print(m);   // 11


  // ============================================================
  // 13. IMPORTANT DIFFERENCE: --x VS x--
  // ============================================================

  int c = 10;

  print(c--); // 10
  print(c);   // 9

  int d = 10;

  print(--d); // 9
  print(d);   // 9


  // ============================================================
  // QUICK SUMMARY
  // ============================================================

  // INCREMENT:
  //
  // x++  -> x = x + 1
  // ++x  -> x = x + 1
  //
  // Difference is WHEN the value is used.
  //
  // x++  -> use old value, then increase
  // ++x  -> increase, then use new value


  // DECREMENT:
  //
  // x--  -> x = x - 1
  // --x  -> x = x - 1
  //
  // Difference is WHEN the value is used.
  //
  // x--  -> use old value, then decrease
  // --x  -> decrease, then use new value


  // IF:
  //
  // if (condition) {
  //   // runs if condition is true
  // }


  // IF - ELSE:
  //
  // if (condition) {
  //   // true
  // } else {
  //   // false
  // }


  // IF - ELSE IF - ELSE:
  //
  // if (condition1) {
  //   // condition1 true
  // } else if (condition2) {
  //   // condition2 true
  // } else {
  //   // all conditions false
  // }


  // ============================================================
  // CORE IDEA
  // ============================================================
  //
  // ++  -> increase by 1
  // --  -> decrease by 1
  //
  // if       -> check a condition
  // else if  -> check another condition
  // else     -> when all previous conditions are false
  //
  // &&       -> AND -> all conditions must be true
  // ||       -> OR  -> at least one condition must be true
  // !        -> NOT -> reverses true/false
}