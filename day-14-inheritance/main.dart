void main() {

  // ============================================================
  // INHERITANCE IN DART
  // ============================================================

  // Inheritance allows one class to use the properties
  // and methods of another class.
  //
  // Parent class → Superclass / Base class
  // Child class  → Subclass / Derived class
  //
  // In Dart, inheritance is done using the "extends" keyword.


  // ============================================================
  // 1. BASIC INHERITANCE
  // ============================================================

  class Animal {

    String name = "Animal";

    void eat() {
      print("Animal is eating");
    }
  }


  class Dog extends Animal {

    void bark() {
      print("Dog is barking");
    }
  }


  Dog dog = Dog();

  // Property inherited from Animal
  print(dog.name);

  // Method inherited from Animal
  dog.eat();

  // Method of Dog
  dog.bark();


  // ============================================================
  // 2. PARENT CLASS AND CHILD CLASS
  // ============================================================

  // Animal → Parent class
  //
  // Dog → Child class
  //
  // Dog gets accessible properties and methods
  // from Animal.


  // ============================================================
  // 3. "extends" KEYWORD
  // ============================================================

  // "extends" is used to create inheritance.
  //
  // Syntax:
  //
  // class Child extends Parent {
  //
  // }


  // Example:
  //
  // class Vehicle {
  //   void start() {
  //     print("Vehicle started");
  //   }
  // }
  //
  // class Car extends Vehicle {
  // }


  // ============================================================
  // 4. CHILD CAN HAVE ITS OWN MEMBERS
  // ============================================================

  class Vehicle {

    void start() {
      print("Vehicle started");
    }
  }


  class Car extends Vehicle {

    void drive() {
      print("Car is driving");
    }
  }


  Car car = Car();

  car.start();  // Inherited method
  car.drive();  // Car's own method


  // ============================================================
  // 5. CONSTRUCTOR IN INHERITANCE
  // ============================================================

  // A child class does NOT automatically call the
  // parent's parameterized constructor without using
  // a super constructor invocation.
  //
  // "super" is used to call the parent constructor.


  class Person {

    String name;

    Person(this.name);
  }


  class Student extends Person {

    int age;

    Student(String name, this.age)
        : super(name);
  }


  Student student = Student("Naresh", 25);

  print(student.name);
  print(student.age);

  // Naresh
  // 25


  // ============================================================
  // 6. "super" KEYWORD
  // ============================================================

  // super refers to the parent class.
  //
  // super(...) → calls parent constructor.
  //
  // super.method() → calls parent method.
  //
  // super.property → accesses parent property.


  // ============================================================
  // 7. METHOD OVERRIDING
  // ============================================================

  // A child class can provide its own implementation
  // of a method that already exists in the parent class.
  //
  // This is called METHOD OVERRIDING.
  //
  // Use @override to clearly indicate overriding.


  class Animal2 {

    void sound() {
      print("Animal makes a sound");
    }
  }


  class Dog2 extends Animal2 {

    @override
    void sound() {
      print("Dog barks");
    }
  }


  Dog2 dog2 = Dog2();

  dog2.sound();

  // Dog barks


  // ============================================================
  // 8. @override
  // ============================================================

  // @override tells Dart that the child class
  // is overriding a method from the parent class.
  //
  // It helps Dart detect mistakes.


  // ============================================================
  // 9. MULTI-LEVEL INHERITANCE
  // ============================================================

  // One class can inherit from another child class.
  //
  // Example:
  //
  // Animal
  //    ↓
  // Mammal
  //    ↓
  // Dog


  class Animal3 {

    void eat() {
      print("Eating");
    }
  }


  class Mammal extends Animal3 {

    void walk() {
      print("Walking");
    }
  }


  class Dog3 extends Mammal {

    void bark() {
      print("Barking");
    }
  }


  Dog3 dog3 = Dog3();

  dog3.eat();   // From Animal3
  dog3.walk();  // From Mammal
  dog3.bark();  // From Dog3


  // ============================================================
  // 10. DART DOES NOT SUPPORT MULTIPLE CLASS INHERITANCE
  // ============================================================

  // A class cannot extend multiple classes.
  //
  // ❌ Not allowed:
  //
  // class C extends A, B {
  //
  // }
  //
  // Dart uses "mixins" when behavior from multiple
  // sources is needed.


  // ============================================================
  // 11. IMPORTANT
  // ============================================================

  // Parent class
  // → Provides common properties and methods.
  //
  // Child class
  // → Reuses and can extend parent functionality.
  //
  // extends
  // → Creates inheritance.
  //
  // super
  // → Refers to the parent class.
  //
  // @override
  // → Used when a child replaces a parent's method
  //   with its own implementation.


  // ============================================================
  // IMPORTANT SUMMARY
  // ============================================================

  // Inheritance
  // → Reuse properties and methods of another class.
  //
  // Parent / Superclass
  // → Class being inherited from.
  //
  // Child / Subclass
  // → Class that inherits.
  //
  // extends
  // → Used for inheritance.
  //
  // super
  // → Used to access/call parent members.
  //
  // @override
  // → Used to override a parent method.
  //
  // Multi-level inheritance
  // → A → B → C.
  //
  // Multiple class inheritance
  // → Not supported in Dart.

}