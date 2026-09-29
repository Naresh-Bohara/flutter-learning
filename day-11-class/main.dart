void main() {

  // ============================================================
  // DART - DAY 7
  // OOP: CLASS AND OBJECT
  // ============================================================


  // ============================================================
  // 1. WHAT IS A CLASS?
  // ============================================================

  // A class is a blueprint/template for creating objects.
  //
  // A class defines:
  // - properties (data)
  // - methods (behavior)
  //
  // Example:
  //
  // Student class can define:
  // name, age, study()


  // ============================================================
  // 2. CREATING A CLASS
  // ============================================================

  // class Student {
  //   String name;
  //   int age;
  //
  //   void study() {
  //     print("$name is studying");
  //   }
  // }


  // ============================================================
  // 3. WHAT IS AN OBJECT?
  // ============================================================

  // An object is an instance of a class.
  //
  // Class  -> blueprint
  // Object -> actual instance created from blueprint


  // ============================================================
  // 4. CREATING OBJECT
  // ============================================================

  Student student1 = Student();

  print(student1);

  // student1 is an OBJECT of Student class.


  // ============================================================
  // 5. PROPERTIES / FIELDS
  // ============================================================

  Student student2 = Student();

  student2.name = "Naresh";
  student2.age = 25;

  print(student2.name);
  print(student2.age);

  // Naresh
  // 25


  // ============================================================
  // 6. METHODS
  // ============================================================

  student2.study();

  // Naresh is studying


  // ============================================================
  // 7. MULTIPLE OBJECTS
  // ============================================================

  Student student3 = Student();

  student3.name = "Hari";
  student3.age = 22;

  student3.study();

  // Hari is studying

  // Each object has its own data.


  // ============================================================
  // 8. CONSTRUCTOR
  // ============================================================

  // Constructor is used to initialize an object
  // when the object is created.

  Student student4 = Student(
    "Ram",
    20,
  );

  print(student4.name);
  print(student4.age);

  // Ram
  // 20


  // ============================================================
  // 9. CONSTRUCTOR SYNTAX
  // ============================================================

  // class Student {
  //   String name;
  //   int age;
  //
  //   Student(this.name, this.age);
  // }


  // ============================================================
  // 10. NAMED CONSTRUCTOR
  // ============================================================

  // A class can have named constructors.

  Student student5 = Student.fromData(
    "Sita",
    21,
  );

  print(student5.name);
  print(student5.age);


  // ============================================================
  // 11. NAMED PARAMETERS IN CONSTRUCTOR
  // ============================================================

  User user = User(
    name: "Naresh",
    age: 25,
  );

  print(user.name);
  print(user.age);


  // ============================================================
  // 12. this KEYWORD
  // ============================================================

  // this refers to the current object.
  //
  // Example:
  //
  // Student(this.name, this.age);
  //
  // this.name -> object's name
  // this.age  -> object's age


  // ============================================================
  // 13. FINAL EXAMPLE
  // ============================================================

  Car car1 = Car(
    brand: "Toyota",
    model: "Corolla",
  );

  car1.display();

  Car car2 = Car(
    brand: "BMW",
    model: "X5",
  );

  car2.display();

}


// ============================================================
// CLASS
// ============================================================

class Student {

  // Properties / Fields
  String name = "";
  int age = 0;

  // Default constructor
  Student();

  // Named constructor
  Student.fromData(this.name, this.age);

  // Method
  void study() {
    print("$name is studying");
  }
}


// ============================================================
// CLASS WITH NAMED PARAMETERS
// ============================================================

class User {

  String name;
  int age;

  User({
    required this.name,
    required this.age,
  });
}


// ============================================================
// CLASS: CAR
// ============================================================

class Car {

  String brand;
  String model;

  Car({
    required this.brand,
    required this.model,
  });

  void display() {
    print("$brand $model");
  }
}