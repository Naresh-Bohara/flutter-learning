void main() {

  // ============================================================
  // CONSTRUCTOR IN DART
  // ============================================================

  // Constructor is used to initialize an object
  // when the object is created.
  //
  // Example:
  //
  // CommonButton r = CommonButton("Big", "Red");
  //
  // Here CommonButton(...) is the constructor call.


  // ============================================================
  // 1. BASIC CONSTRUCTOR
  // ============================================================

  // A constructor without parameters.

  class Student {
    String name = "Unknown";

    Student() {
      print("Student object created");
    }
  }

  Student s1 = Student();

  // Output:
  // Student object created


  // ============================================================
  // 2. PARAMETERIZED CONSTRUCTOR
  // ============================================================

  // Constructor can receive values through parameters.

  class User {
    String name;
    int age;

    User(String name, int age) {
      this.name = name;
      this.age = age;
    }
  }

  User u1 = User("Naresh", 25);

  print(u1.name);
  print(u1.age);

  // Naresh
  // 25


  // ============================================================
  // 3. "this" KEYWORD
  // ============================================================

  // this refers to the current object.

  class Employee {
    String name;
    int salary;

    Employee(String name, int salary) {
      this.name = name;
      this.salary = salary;
    }
  }

  Employee e1 = Employee("Naresh", 30000);

  print(e1.name);
  print(e1.salary);

  // this.name = name;
  //
  // Left side:
  // this.name -> object's property
  //
  // Right side:
  // name -> constructor parameter


  // ============================================================
  // 4. SHORT CONSTRUCTOR SYNTAX
  // ============================================================

  // Dart provides a shorter way to write the above constructor.

  class Person {
    String name;
    int age;

    Person(this.name, this.age);
  }

  Person p1 = Person("Naresh", 25);

  print(p1.name);
  print(p1.age);

  // This:
  //
  // Person(this.name, this.age);
  //
  // is shorthand for:
  //
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }


  // ============================================================
  // 5. PRACTICAL EXAMPLE — CommonButton
  // ============================================================

  // This is a very good example of:
  //
  // Class
  // Properties
  // Constructor
  // Object
  // Method

  class CommonButton {
    // Properties / fields
    String buttonName;
    String buttonColor;

    // Parameterized constructor
    CommonButton(this.buttonName, this.buttonColor);

    // Method
    void onPressed() {
      print("$buttonName pressed.");
    }
  }

  // Creating objects

  CommonButton r = CommonButton("Big", "Red");
  CommonButton d = CommonButton("Small", "Green");

  // Calling methods

  r.onPressed();
  d.onPressed();

  // Output:
  //
  // Big pressed.
  // Small pressed.


  // ============================================================
  // 6. POSITIONAL PARAMETERS
  // ============================================================

  // In this constructor:
  //
  // CommonButton(this.buttonName, this.buttonColor);
  //
  // parameters are positional.
  //
  // Order matters.

  CommonButton b1 = CommonButton("Login", "Blue");

  print(b1.buttonName);
  print(b1.buttonColor);

  // Login
  // Blue

  // First value  -> buttonName
  // Second value -> buttonColor


  // ============================================================
  // 7. NAMED PARAMETERS
  // ============================================================

  // Named parameters are written using { }.

  class Product {
    String name;
    double price;

    Product({
      required this.name,
      required this.price,
    });
  }

  Product product = Product(
    name: "Laptop",
    price: 80000,
  );

  print(product.name);
  print(product.price);


  // ============================================================
  // 8. required NAMED PARAMETERS
  // ============================================================

  // required means the value MUST be provided.

  class Account {
    String username;
    String email;

    Account({
      required this.username,
      required this.email,
    });
  }

  Account account = Account(
    username: "naresh",
    email: "naresh@gmail.com",
  );

  // This would give an error:
  //
  // Account(
  //   username: "naresh",
  // );
  //
  // Because email is required.


  // ============================================================
  // 9. OPTIONAL NAMED PARAMETERS
  // ============================================================

  // Named parameters without "required" can be optional
  // when they have nullable/default handling.

  class Customer {
    String name;
    int age;

    Customer({
      this.name = "Unknown",
      this.age = 0,
    });
  }

  Customer c1 = Customer();

  print(c1.name);
  print(c1.age);

  // Unknown
  // 0


  // ============================================================
  // 10. DEFAULT VALUES
  // ============================================================

  // Default value is used when the caller does not provide
  // a value.

  class Car {
    String brand;
    String color;

    Car({
      required this.brand,
      this.color = "White",
    });
  }

  Car car1 = Car(
    brand: "BMW",
  );

  print(car1.brand);
  print(car1.color);

  // BMW
  // White


  // ============================================================
  // 11. OPTIONAL POSITIONAL PARAMETERS
  // ============================================================

  // [] means optional positional parameter.

  class Book {
    String title;
    String author;

    Book(this.title, [this.author = "Unknown"]);
  }

  Book book1 = Book("Java");

  Book book2 = Book(
    "Java",
    "James Gosling",
  );

  print(book1.title);
  print(book1.author);

  print(book2.title);
  print(book2.author);

  // Java
  // Unknown
  //
  // Java
  // James Gosling


  // ============================================================
  // 12. NAMED CONSTRUCTOR
  // ============================================================

  // Named constructor gives another way to create an object.

  class UserProfile {
    String name;
    int age;

    UserProfile(this.name, this.age);

    UserProfile.guest()
        : name = "Guest",
          age = 0;
  }

  UserProfile user1 = UserProfile("Naresh", 25);

  UserProfile user2 = UserProfile.guest();

  print(user1.name);
  print(user1.age);

  print(user2.name);
  print(user2.age);

  // Naresh
  // 25
  //
  // Guest
  // 0


  // ============================================================
  // 13. MULTIPLE NAMED CONSTRUCTORS
  // ============================================================

  class EmployeeData {
    String name;
    int salary;

    EmployeeData(this.name, this.salary);

    EmployeeData.intern(this.name)
        : salary = 15000;

    EmployeeData.manager(this.name)
        : salary = 100000;
  }

  EmployeeData employee1 = EmployeeData("Naresh", 30000);

  EmployeeData employee2 =
      EmployeeData.intern("Ram");

  EmployeeData employee3 =
      EmployeeData.manager("Hari");

  print(employee1.name);
  print(employee1.salary);

  print(employee2.name);
  print(employee2.salary);

  print(employee3.name);
  print(employee3.salary);


  // ============================================================
  // 14. INITIALIZER LIST
  // ============================================================

  // Initializer list starts after :
  //
  // It initializes fields BEFORE the constructor body runs.

  class Rectangle {
    double width;
    double height;
    double area;

    Rectangle(this.width, this.height)
        : area = width * height;
  }

  Rectangle rectangle = Rectangle(10, 5);

  print(rectangle.area);

  // 50


  // ============================================================
  // 15. final PROPERTY WITH CONSTRUCTOR
  // ============================================================

  // final property can be initialized through a constructor.

  class StudentFinal {
    final String name;
    final int age;

    StudentFinal(this.name, this.age);
  }

  StudentFinal sf = StudentFinal("Naresh", 25);

  print(sf.name);
  print(sf.age);

  // final means:
  //
  // The value can be assigned only once.


  // ============================================================
  // 16. CONST CONSTRUCTOR
  // ============================================================

  // const constructor is used to create compile-time
  // constant objects.

  class Point {
    final int x;
    final int y;

    const Point(this.x, this.y);
  }

  const Point point = Point(10, 20);

  print(point.x);
  print(point.y);

  // 10
  // 20


  // ============================================================
  // 17. FACTORY CONSTRUCTOR
  // ============================================================

  // factory constructor gives control over object creation.
  //
  // It can return an existing object or another object.

  class Logger {
    static final Logger _instance = Logger._internal();

    Logger._internal();

    factory Logger() {
      return _instance;
    }
  }

  Logger logger1 = Logger();
  Logger logger2 = Logger();

  // Both can refer to the same Logger instance.
  //
  // factory is commonly used when object creation
  // needs special control.


  // ============================================================
  // 18. PRIVATE CONSTRUCTOR
  // ============================================================

  // "_" makes a constructor private to the library/file.

  class Database {
    Database._private();
  }

  // Database db = Database._private();
  //
  // Cannot normally be accessed from another library/file.


  // ============================================================
  // 19. REDIRECTING CONSTRUCTOR
  // ============================================================

  // One constructor can redirect to another constructor
  // in the same class.

  class PersonData {
    String name;
    int age;

    PersonData(this.name, this.age);

    PersonData.guest()
        : this("Guest", 0);
  }

  PersonData pd = PersonData.guest();

  print(pd.name);
  print(pd.age);

  // Guest
  // 0


  // ============================================================
  // 20. SUPER CONSTRUCTOR
  // ============================================================

  // Used with inheritance.
  //
  // super() calls the parent class constructor.

  class Vehicle {
    String brand;

    Vehicle(this.brand);
  }

  class Bike extends Vehicle {
    int speed;

    Bike(String brand, this.speed)
        : super(brand);
  }

  Bike bike = Bike("Yamaha", 120);

  print(bike.brand);
  print(bike.speed);

  // Yamaha
  // 120


  // ============================================================
  // 21. CONSTRUCTOR CAN PERFORM VALIDATION
  // ============================================================

  class BankAccount {
    String accountNumber;
    double balance;

    BankAccount(this.accountNumber, this.balance) {
      if (balance < 0) {
        throw Exception("Balance cannot be negative");
      }
    }
  }

  BankAccount bank =
      BankAccount("ACC1001", 5000);

  print(bank.accountNumber);
  print(bank.balance);


  // ============================================================
  // 22. CONSTRUCTOR vs METHOD
  // ============================================================

  // Constructor:
  //
  // Used to initialize an object.
  //
  // Method:
  //
  // Used to perform an action/behavior.

  class Demo {
    String name;

    Demo(this.name); // Constructor

    void display() { // Method
      print(name);
    }
  }

  Demo demo = Demo("Naresh");

  demo.display();


  // ============================================================
  // 23. CONSTRUCTOR HAS NO RETURN TYPE
  // ============================================================

  class Example {
    Example() {
      print("Constructor");
    }
  }

  // Correct:
  //
  // Example();
  //
  // A constructor does NOT have:
  //
  // void Example()
  //
  // because:
  //
  // void Example() -> normal method
  // Example()      -> constructor


  // ============================================================
  // 24. CONSTRUCTOR NAME MATCHES CLASS NAME
  // ============================================================

  class Laptop {
    Laptop() {
      print("Laptop constructor");
    }
  }

  Laptop laptop = Laptop();


  // ============================================================
  // 25. IMPORTANT TRICK:
  // DOES DART SUPPORT CONSTRUCTOR OVERLOADING?
  // ============================================================

  // Traditional constructor overloading is NOT supported.
  //
  // You cannot have:

  // class User {
  //
  //   User();
  //
  //   User(String name); // ❌
  //
  //   User(String name, int age); // ❌
  //
  // }


  // Instead, use named constructors:

  class UserExample {
    UserExample();

    UserExample.withName(String name);

    UserExample.withNameAndAge(
      String name,
      int age,
    );
  }

  UserExample();
  UserExample.withName("Naresh");
  UserExample.withNameAndAge("Naresh", 25);


  // ============================================================
  // 26. DEFAULT CONSTRUCTOR — IMPORTANT TRICK
  // ============================================================

  // If you don't write any constructor,
  // Dart provides an implicit default constructor.

  class Animal {
    String name = "Dog";
  }

  Animal animal = Animal();


  // BUT:
  //
  // If you create your own constructor,
  // the implicit default constructor is not available.

  class Test {
    Test(String name);
  }

  // Test();          // ❌ Error
  // Test("Naresh");  // ✅


  // ============================================================
  // 27. COMMON INDUSTRY-STYLE CONSTRUCTOR
  // ============================================================

  // In real applications, you will commonly see
  // named + required + default values.

  class AppUser {
    final String id;
    final String name;
    final String email;
    final String role;

    AppUser({
      required this.id,
      required this.name,
      required this.email,
      this.role = "user",
    });
  }

  AppUser appUser = AppUser(
    id: "101",
    name: "Naresh",
    email: "naresh@gmail.com",
  );

  print(appUser.name);
  print(appUser.role);

  // Naresh
  // user


  // ============================================================
  // FINAL SUMMARY
  // ============================================================

  // Constructor
  // → Initializes an object.
  //
  // Parameterized constructor
  // → Receives data.
  //
  // this
  // → Refers to the current object.
  //
  // Positional parameter
  // → Depends on order.
  //
  // Named parameter
  // → Uses parameter names.
  //
  // required
  // → Value must be provided.
  //
  // Default value
  // → Used when value isn't provided.
  //
  // Named constructor
  // → Provides another way to create an object.
  //
  // Initializer list
  // → Initializes fields before constructor body.
  //
  // final
  // → Can be assigned only once.
  //
  // const constructor
  // → Creates compile-time constant objects.
  //
  // factory constructor
  // → Controls what object is returned.
  //
  // super()
  // → Calls parent constructor.
}