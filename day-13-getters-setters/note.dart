void main() {

  // ============================================================
  // GETTERS AND SETTERS IN DART
  // ============================================================

  // Getter and Setter are used to control access to
  // class properties.
  //
  // Getter → used to GET / read a value.
  // Setter → used to SET / change a value.
  //
  // They are commonly used with private variables.
  //
  // In Dart, private variables start with "_".
  //
  // Getter and Setter allow us to access a private
  // variable from another library/file.


  // ============================================================
  // 1. GETTER
  // ============================================================

  // A getter is used to READ / GET a value.
  //
  // Syntax:
  //
  // String get propertyName => value;
  //
  // Example:
  //
  // String get name => _name;
  //
  // Getter is accessed like a normal property:
  //
  // object.name
  //
  // We do NOT use:
  //
  // object.name()


  // ============================================================
  // 2. SETTER
  // ============================================================

  // A setter is used to SET / CHANGE a value.
  //
  // Syntax:
  //
  // set propertyName(value) {
  //   ...
  // }
  //
  // Example:
  //
  // set name(String value) {
  //   _name = value;
  // }
  //
  // Setter is used like:
  //
  // object.name = "Naresh";


  // ============================================================
  // 3. GETTER + SETTER
  // ============================================================

  // Getter → reads the private variable.
  //
  // Setter → changes the private variable.
  //
  // Private variable → stores the actual data.
  //
  // Getter + Setter → provides controlled access
  // to the private variable.


  // ============================================================
  // 4. GETTER AND SETTER WITH TWO FILES
  // ============================================================

  // student.dart
  // → Contains the private variable,
  //   getter and setter.
  //
  // main.dart
  // → Imports student.dart and uses
  //   the getter and setter.


  // ============================================================
  // 5. GETTER
  // ============================================================

  // Getter:
  //
  // Student s = Student();
  //
  // print(s.name);
  //
  // Here:
  //
  // s.name
  // → calls the getter
  // → reads the private _name variable.


  // ============================================================
  // 6. SETTER
  // ============================================================

  // Setter:
  //
  // Student s = Student();
  //
  // s.name = "Naresh";
  //
  // Here:
  //
  // s.name = "Naresh"
  // → calls the setter
  // → changes the private _name variable.


  // ============================================================
  // 7. IMPORTANT
  // ============================================================

  // Getter → GET / READ
  //
  // Setter → SET / CHANGE
  //
  // Getter → object.property
  //
  // Setter → object.property = value
  //
  // Getter does not use ()
  //
  // Setter looks like normal variable assignment.


  // ============================================================
  // 8. VALIDATION USING SETTER
  // ============================================================

  // Setter can also be used to validate data
  // before changing the private variable.
  //
  // Example:
  //
  // set age(int value) {
  //   if (value >= 0) {
  //     _age = value;
  //   }
  // }


  // ============================================================
  // IMPORTANT SUMMARY
  // ============================================================

  // Private variable
  // → Starts with "_".
  //
  // Getter
  // → Reads a private variable.
  //
  // Setter
  // → Changes a private variable.
  //
  // Getter + Setter
  // → Gives controlled access to private data.
  //
  // Getter:
  // → object.name
  //
  // Setter:
  // → object.name = "Naresh";

}