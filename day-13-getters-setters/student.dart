// ============================================================
// student.dart
// ============================================================

class Student {

  // Private variable
  // Only accessible directly inside this library/file.
  String _name = "Unknown";


  // ============================================================
  // GETTER
  // ============================================================

  // Used to READ the private _name variable.

  String get name => _name;


  // ============================================================
  // SETTER
  // ============================================================

  // Used to CHANGE the private _name variable.

  set name(String value) {
    _name = value;
  }
}