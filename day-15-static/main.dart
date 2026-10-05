void main() {

  // ============================================================
  // STATIC VARIABLES IN DART
  // ============================================================

  // A static variable belongs to the CLASS rather than
  // to individual OBJECTS.
  //
  // It is declared using the "static" keyword.
  //
  // Because it belongs to the class, all objects of that
  // class share the same static variable.


  // ============================================================
  // 1. INSTANCE VARIABLE vs STATIC VARIABLE
  // ============================================================

  class Student {

    // Instance variable
    String name;

    // Static variable
    static String college = "Far Western University";

    Student(this.name);
  }


  Student s1 = Student("Naresh");
  Student s2 = Student("Ram");


  // Instance variable:
  //
  // Each object has its own "name".

  print(s1.name);
  print(s2.name);

  // Naresh
  // Ram


  // Static variable:
  //
  // "college" belongs to the Student class.
  //
  // It is shared by all Student objects.

  print(Student.college);

  // Far Western University


  // ============================================================
  // 2. HOW TO ACCESS STATIC VARIABLES
  // ============================================================

  // Static variables should be accessed using
  // the CLASS NAME.

  print(Student.college);

  // ClassName.staticVariable


  // ============================================================
  // 3. WHY NOT CREATE AN OBJECT FOR STATIC VARIABLE?
  // ============================================================

  // Static members belong to the class itself.
  //
  // Therefore, we do not need an object to access them.

  // Correct:
  //
  // Student.college;


  // ============================================================
  // 4. STATIC VARIABLE IS SHARED
  // ============================================================

  class Counter {

    static int count = 0;

    Counter() {
      count++;
    }
  }


  Counter c1 = Counter();
  Counter c2 = Counter();
  Counter c3 = Counter();

  print(Counter.count);

  // 3


  // There is only ONE shared "count" variable
  // at the class level.
  //
  // c1 → count becomes 1
  // c2 → count becomes 2
  // c3 → count becomes 3


  // ============================================================
  // 5. INSTANCE VARIABLE CREATES SEPARATE DATA
  // ============================================================

  class User {

    String name;

    User(this.name);
  }


  User u1 = User("Naresh");
  User u2 = User("Ram");

  // u1 has its own name
  // u2 has its own name
  //
  // Changing u1.name does not change u2.name.


  // ============================================================
  // 6. STATIC VARIABLE DOES NOT CREATE A COPY FOR EACH OBJECT
  // ============================================================

  // Suppose we create 1000 objects.
  //
  // Instance variable:
  //
  // Every object has its own field.
  //
  // Static variable:
  //
  // The field belongs to the class and is shared.
  //
  // Therefore, static can avoid storing the same
  // class-level field separately inside every object.


  // ============================================================
  // 7. WHY STATIC CAN BE MEMORY EFFICIENT
  // ============================================================

  // Suppose every student belongs to the same college.
  //
  // This information does not need to be different
  // for every student.

  class CollegeStudent {

    String name;

    static String college = "FWU";

    CollegeStudent(this.name);
  }


  // If there are 1000 students:
  //
  // name → different for each object
  //
  // college → same for every student
  //
  // Therefore "college" is suitable as a static variable.
  //
  // Instead of having a separate college field on every
  // student object, the class has one shared class-level field.


  // ============================================================
  // 8. IMPORTANT: STATIC DOES NOT ALWAYS MEAN
  //    "BETTER MEMORY"
  // ============================================================

  // Static should NOT be used just because it may save memory.
  //
  // Use static when the data logically belongs to the CLASS
  // and is common/shared among objects.
  //
  // If every object needs its own value,
  // use an instance variable.


  // ============================================================
  // 9. STATIC + FINAL
  // ============================================================

  // static → belongs to the class
  //
  // final → can be assigned only once.

  class AppConfig {

    static final String appName = "My App";
  }


  print(AppConfig.appName);

  // My App


  // This is useful for a shared value that should not
  // be reassigned.


  // ============================================================
  // 10. STATIC + CONST
  // ============================================================

  // static const is used for a shared compile-time constant.

  class Constants {

    static const String country = "Nepal";
    static const double pi = 3.14159;
  }


  print(Constants.country);
  print(Constants.pi);


  // ============================================================
  // 11. STATIC METHODS
  // ============================================================

  // A static method also belongs to the CLASS.

  class Calculator {

    static int add(int a, int b) {
      return a + b;
    }
  }


  print(Calculator.add(10, 20));

  // 30


  // No object is required.


  // ============================================================
  // 12. STATIC vs INSTANCE
  // ============================================================

  // INSTANCE VARIABLE
  // → Belongs to an object.
  // → Each object has its own value.
  // → Access using object.variable.
  //
  // Example:
  //
  // student.name


  // STATIC VARIABLE
  // → Belongs to the class.
  // → Shared by objects of that class.
  // → Access using ClassName.variable.
  //
  // Example:
  //
  // Student.college


  // ============================================================
  // 13. EASY REAL-WORLD EXAMPLE
  // ============================================================

  class Employee {

    String name;

    static String company = "ABC Company";

    Employee(this.name);
  }


  Employee e1 = Employee("Naresh");
  Employee e2 = Employee("Ram");


  // Different for each object:
  print(e1.name);
  print(e2.name);


  // Same/shared for all employees:
  print(Employee.company);


  // name → INSTANCE variable
  // company → STATIC variable


  // ============================================================
  // IMPORTANT SUMMARY
  // ============================================================

  // static
  // → Belongs to the class.
  //
  // Instance variable
  // → Belongs to an object.
  //
  // Static variable
  // → Shared by objects of the same class.
  //
  // Access static:
  // → ClassName.variable
  //
  // Access instance:
  // → object.variable
  //
  // static final
  // → Shared class-level value that cannot be reassigned.
  //
  // static const
  // → Shared compile-time constant.
  //
  // static method
  // → Class-level method that can be called without
  //   creating an object.
  //
  // Memory:
  // → Static can avoid repeating the same class-level
  //   field in every object.
  //
  // IMPORTANT:
  // → Use static because the data logically belongs to
  //   the class, not simply because of memory.


  // ============================================================
  // BEST WAY TO REMEMBER
  // ============================================================

  // Object
  //   ↓
  // Instance variable
  //   ↓
  // Each object has its own value.
  //
  //
  // Class
  //   ↓
  // Static variable
  //   ↓
  // Shared value for the class.

}