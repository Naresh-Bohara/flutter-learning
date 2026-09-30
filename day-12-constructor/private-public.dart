void main() {

  // ============================================================
  // PUBLIC AND PRIVATE VARIABLES IN DART
  // ============================================================

  // In many programming languages like Java:
  //
  // private → usually based on CLASS
  // public  → can be accessed from outside the CLASS
  //
  // In Dart:
  //
  // private → based on LIBRARY
  // public  → accessible from other libraries/files
  //
  // A Dart file is normally treated as a library.


  // ============================================================
  // 1. PUBLIC VARIABLE
  // ============================================================

  // A variable is PUBLIC by default.
  //
  // If its name does NOT start with "_",
  // it can be accessed from another Dart library/file.

  class Student {
    String name = "Naresh"; // Public
  }

  Student s = Student();

  print(s.name);

  // Naresh


  // ============================================================
  // 2. PRIVATE VARIABLE
  // ============================================================

  // In Dart, "_" at the beginning makes a variable PRIVATE.
  //
  // Private means it is accessible only inside
  // the same Dart library/file.

  class Employee {
    String _salary = "30000"; // Private
  }

  Employee e = Employee();

  // print(e._salary);
  // ❌ Cannot access from another library/file.


  // ============================================================
  // 3. IMPORTANT: DART PRIVACY IS LIBRARY-BASED
  // ============================================================

  // Dart does NOT use:
  //
  // private
  // public
  // protected
  //
  // keywords like Java.
  //
  // Instead:
  //
  // name       → Public
  // _name      → Private to the library


  // ============================================================
  // 4. STATIC VARIABLE
  // ============================================================

  // static means the variable belongs to the CLASS,
  // not to each individual OBJECT.
  //
  // We access a static variable using the CLASS NAME.

  class StudentData {
    static String college = "Far Western University";
  }

  print(StudentData.college);

  // Far Western University


  // ============================================================
  // 5. NORMAL VARIABLE vs STATIC VARIABLE
  // ============================================================

  class User {
    String name = "Naresh";          // Instance variable
    static String country = "Nepal"; // Static variable
  }

  User u = User();

  print(u.name);          // Object required
  print(User.country);    // Object NOT required

  // Naresh
  // Nepal


  // ============================================================
  // 6. PRIVATE + STATIC
  // ============================================================

  // We can also combine "_" and static.
  //
  // _ → private to library
  // static → belongs to class

  class Database {
    static String _databaseName = "MySQL";
  }

  // _databaseName is:
  //
  // PRIVATE → because of "_"
  // STATIC  → because of "static"


  // ============================================================
  // IMPORTANT SUMMARY
  // ============================================================

  // Public
  // → No "_" at the beginning.
  // → Can be accessed from other libraries/files.
  //
  // Private
  // → Starts with "_".
  // → Accessible only within the same library/file.
  //
  // static
  // → Belongs to the CLASS, not individual objects.
  // → Access using ClassName.variable.
  //
  // static + _
  // → Static variable that is private to the library.

}