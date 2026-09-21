void main() {
  // string concatenation:
  String fname = "naresh";
  String lname = "bohara";

  String fullname = fname + " " + lname;
  print(fullname);

  // string interpolation:
  int age = 23;
  print('The age of Ram is ${age}');


  int a =23;
  int b = 24;
  print("The sum of $a and $b is ${a+b}");

  String value = "hello,how,are,you";
  print(value.substring(0,3));
  print(value.toUpperCase());
  print(value.toLowerCase());
  print(value.contains("other"));
  print(value.length);
  print(value.trim().length);
  print(value.isEmpty);
  print(value.isNotEmpty);
  print(value.split(','));

  print(b.isEven);
}
