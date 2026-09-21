void main() {
  // variables:
  // named container that store value in memory
  // syntax:
  // dataType variable_name  = value;
  int age = 23;
  print(age);
  print(age.runtimeType);

  // string type:
  String name = "naresh";
  print(name);

  var agee = 234;
  print(agee.runtimeType);

  dynamic value1 = "hari";
  print(value1.runtimeType);

  dynamic roll = 23;
  print(roll.runtimeType);

  dynamic height = 5.5;
  print(height.runtimeType);

  var day = "sunday";
  day = "monday";
  // day=23;  shows error

  dynamic price = 200;
  price = "zero"; // it allows...

  // const type:

  const int year = 2023;
  // year = 2024;  dont allow update...

  final int dob = 2021;
  dob = 2003; // dont allow

  // whats diff between final and const:
  // compile time constant is const
  // run time constant is final

  // data types:
  // int, string, double, bool, List, Set Map
}
