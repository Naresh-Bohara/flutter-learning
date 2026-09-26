void main() {

  // ============================================================
  // DART - DAY 3
  // STRING + STRING METHODS
  // ============================================================


  // ============================================================
  // 1. WHAT IS A STRING?
  // ============================================================

  // String is used to store text.

  String name = "Naresh";

  print(name);


  // String can use:
  //
  // "double quotes"
  // 'single quotes'


  String first = "Hello";
  String second = 'Dart';

  print(first);
  print(second);


  // ============================================================
  // 2. STRING CONCATENATION
  // ============================================================

  // Concatenation means joining strings together.
  //
  // The + operator is used to join strings.

  String fname = "Naresh";
  String lname = "Bohara";

  String fullname = fname + " " + lname;

  print(fullname);

  // Output:
  // Naresh Bohara


  // Another example:

  String a = "Hello";
  String b = "World";

  print(a + " " + b);

  // Output:
  // Hello World


  // ============================================================
  // 3. STRING INTERPOLATION
  // ============================================================

  // String interpolation means inserting variables
  // or expressions directly inside a String.
  //
  // $variable
  // ${expression}


  String name = "Naresh";
  int age = 23;

  print("My name is $name");

  print("My age is $age");


  // ${} is used when we have an expression.

  int x = 10;
  int y = 20;

  print("The sum is ${x + y}");

  // Output:
  // The sum is 30


  // ============================================================
  // 4. $variable VS ${expression}
  // ============================================================

  String name = "Naresh";

  print("Hello $name");

  // Use $ when directly inserting a variable.


  int a = 10;
  int b = 20;

  print("Sum = ${a + b}");

  // Use ${} when performing an expression.


  // ============================================================
  // 5. STRING LENGTH
  // ============================================================

  // .length returns the number of characters.

  String value = "Hello";

  print(value.length);

  // Output:
  // 5


  // Spaces are also counted.

  String text = "Hello World";

  print(text.length);

  // Output:
  // 11


  // ============================================================
  // 6. toUpperCase()
  // ============================================================

  // Converts the String to uppercase.

  String name = "naresh";

  print(name.toUpperCase());

  // Output:
  // NARESH


  // ============================================================
  // 7. toLowerCase()
  // ============================================================

  // Converts the String to lowercase.

  String name = "NARESH";

  print(name.toLowerCase());

  // Output:
  // naresh


  // ============================================================
  // 8. trim()
  // ============================================================

  // Removes whitespace from the beginning and end
  // of a String.

  String name = "   Naresh   ";

  print(name.trim());

  // Output:
  // Naresh


  // IMPORTANT:
  //
  // trim() does NOT remove spaces between words.

  String text = "   Hello World   ";

  print(text.trim());

  // Output:
  // Hello World


  // ============================================================
  // 9. isEmpty
  // ============================================================

  // Checks whether a String contains no characters.
  //
  // Returns:
  // true  -> empty
  // false -> not empty

  String value = "";

  print(value.isEmpty);

  // Output:
  // true


  String name = "Naresh";

  print(name.isEmpty);

  // Output:
  // false


  // ============================================================
  // 10. isNotEmpty
  // ============================================================

  // Checks whether a String contains at least one character.

  String name = "Naresh";

  print(name.isNotEmpty);

  // Output:
  // true


  String value = "";

  print(value.isNotEmpty);

  // Output:
  // false


  // ============================================================
  // 11. contains()
  // ============================================================

  // Checks whether a String contains another String.
  //
  // Returns true or false.

  String text = "Hello World";

  print(text.contains("World"));

  // true

  print(text.contains("Dart"));

  // false


  // ============================================================
  // 12. startsWith()
  // ============================================================

  // Checks whether a String starts with a particular value.

  String text = "Hello World";

  print(text.startsWith("Hello"));

  // true

  print(text.startsWith("World"));

  // false


  // ============================================================
  // 13. endsWith()
  // ============================================================

  // Checks whether a String ends with a particular value.

  String text = "Hello World";

  print(text.endsWith("World"));

  // true

  print(text.endsWith("Hello"));

  // false


  // ============================================================
  // 14. substring()
  // ============================================================

  // substring() extracts part of a String.
  //
  // Syntax:
  //
  // string.substring(start, end)
  //
  // start -> starting index
  // end   -> ending index (NOT included)


  String value = "Hello";

  print(value.substring(0, 3));

  // Output:
  // Hel


  // Index:
  //
  // H  e  l  l  o
  // 0  1  2  3  4
  //
  // substring(0, 3)
  // takes indexes:
  // 0, 1, 2
  //
  // Index 3 is NOT included.


  // Another example:

  String name = "Naresh";

  print(name.substring(0, 4));

  // Output:
  // Naresh -> Nare


  // ============================================================
  // 15. substring() WITH ONLY START
  // ============================================================

  // If end is not provided,
  // substring() continues until the end.

  String name = "Naresh";

  print(name.substring(2));

  // Output:
  // resh


  // ============================================================
  // 16. split()
  // ============================================================

  // split() divides a String into a List.
  //
  // It uses a separator.

  String value = "hello,how,are,you";

  print(value.split(","));

  // Output:
  // [hello, how, are, you]


  // The result is a List<String>.


  List<String> words = value.split(",");

  print(words);

  print(words[0]); // hello
  print(words[1]); // how


  // ============================================================
  // 17. split(" ")
  // ============================================================

  String sentence = "Hello World Dart";

  print(sentence.split(" "));

  // Output:
  // [Hello, World, Dart]


  // ============================================================
  // 18. replaceAll()
  // ============================================================

  // Replaces all occurrences of one String
  // with another String.

  String text = "Hello World";

  print(text.replaceAll("World", "Dart"));

  // Output:
  // Hello Dart


  // Another example:

  String value = "apple apple apple";

  print(value.replaceAll("apple", "banana"));

  // Output:
  // banana banana banana


  // ============================================================
  // 19. replaceFirst()
  // ============================================================

  // Replaces only the first occurrence.

  String value = "apple apple apple";

  print(value.replaceFirst("apple", "banana"));

  // Output:
  // banana apple apple


  // ============================================================
  // 20. indexOf()
  // ============================================================

  // Returns the index of the first occurrence
  // of a value.

  String text = "Hello World";

  print(text.indexOf("World"));

  // Output:
  // 6


  // Index:
  //
  // H e l l o   W o r l d
  // 0 1 2 3 4 5 6 7 8 9 10


  // If the value is not found:
  //
  // indexOf() returns -1.


  print(text.indexOf("Dart"));

  // Output:
  // -1


  // ============================================================
  // 21. lastIndexOf()
  // ============================================================

  // Returns the index of the last occurrence.

  String text = "hello hello";

  print(text.lastIndexOf("hello"));

  // Output:
  // 6


  // ============================================================
  // 22. [] INDEX OPERATOR
  // ============================================================

  // We can access an individual character using its index.

  String name = "Naresh";

  print(name[0]); // N
  print(name[1]); // a
  print(name[2]); // r
  print(name[3]); // e


  // Index starts from 0.
  //
  // N a r e s h
  // 0 1 2 3 4 5


  // ============================================================
  // 23. codeUnitAt()
  // ============================================================

  // Returns the UTF-16 code unit at a particular index.

  String text = "ABC";

  print(text.codeUnitAt(0));

  // A -> 65


  // ============================================================
  // 24. compareTo()
  // ============================================================

  // Compares two Strings.
  //
  // Returns:
  //
  // 0  -> equal
  // <0 -> first String comes before second
  // >0 -> first String comes after second

  print("apple".compareTo("apple"));

  // 0


  // ============================================================
  // 25. String + NUMBER
  // ============================================================

  // You cannot directly concatenate a String and int
  // using + in the same way as two Strings.

  int age = 23;

  // print("Age: " + age); // ERROR


  // Use string interpolation:

  print("Age: $age");

  // Or convert the number to String:

  print("Age: " + age.toString());


  // ============================================================
  // 26. toString()
  // ============================================================

  // Converts a value into a String.

  int age = 23;

  String ageText = age.toString();

  print(ageText);

  print(ageText.runtimeType);

  // Output:
  // String


  // ============================================================
  // 27. STRING METHODS CAN BE CHAINED
  // ============================================================

  // We can call multiple String methods together.

  String text = "   hello world   ";

  print(text.trim().toUpperCase());

  // Output:
  // HELLO WORLD


  // Another example:

  print(text.trim().toUpperCase().contains("HELLO"));

  // true


  // ============================================================
  // 28. String IS IMMUTABLE
  // ============================================================

  // Strings in Dart are immutable.
  //
  // String methods return a new String instead of changing
  // the original String.

  String name = "naresh";

  String upper = name.toUpperCase();

  print(name);  // naresh
  print(upper); // NARESH


  // ============================================================
  // 29. PRACTICAL EXAMPLE
  // ============================================================

  String firstName = "Naresh";
  String lastName = "Bohara";

  String fullName = "$firstName $lastName";

  print("Full Name: $fullName");
  print("Uppercase: ${fullName.toUpperCase()}");
  print("Length: ${fullName.length}");
  print("Contains Naresh: ${fullName.contains("Naresh")}");


  // ============================================================
  // 30. PRACTICAL EMAIL EXAMPLE
  // ============================================================

  String email = "  naresh@gmail.com  ";

  String cleanEmail = email.trim();

  print(cleanEmail);
  print(cleanEmail.contains("@"));
  print(cleanEmail.endsWith(".com"));


  // ============================================================
  // 31. IMPORTANT STRING METHODS SUMMARY
  // ============================================================

  // length
  //     -> returns number of characters
  //
  // toUpperCase()
  //     -> converts to uppercase
  //
  // toLowerCase()
  //     -> converts to lowercase
  //
  // trim()
  //     -> removes beginning/end whitespace
  //
  // contains()
  //     -> checks whether text exists
  //
  // startsWith()
  //     -> checks beginning
  //
  // endsWith()
  //     -> checks ending
  //
  // substring()
  //     -> extracts part of String
  //
  // split()
  //     -> converts String into List
  //
  // replaceAll()
  //     -> replaces all matching values
  //
  // replaceFirst()
  //     -> replaces first matching value
  //
  // indexOf()
  //     -> finds first index
  //
  // lastIndexOf()
  //     -> finds last index
  //
  // isEmpty
  //     -> checks whether String is empty
  //
  // isNotEmpty
  //     -> checks whether String is not empty
  //
  // toString()
  //     -> converts a value to String
  //
  // [] 
  //     -> accesses character by index
  //
  // codeUnitAt()
  //     -> gets UTF-16 code unit
  //
  // compareTo()
  //     -> compares two Strings


  // ============================================================
  // 32. INDEXING SUMMARY
  // ============================================================

  String word = "Dart";

  // D a r t
  // 0 1 2 3

  print(word[0]); // D
  print(word[1]); // a
  print(word[2]); // r
  print(word[3]); // t


  // ============================================================
  // 33. STRING INTERPOLATION SUMMARY
  // ============================================================

  String name = "Naresh";
  int age = 23;

  print("Name: $name");
  print("Age: $age");

  print("Next year age: ${age + 1}");

  // $variable
  //     -> directly insert variable
  //
  // ${expression}
  //     -> evaluate expression and insert result


  // ============================================================
  // DAY 3 CORE POINTS
  // ============================================================

  // String
  //     -> stores text
  //
  // +
  //     -> concatenates Strings
  //
  // $variable
  //     -> String interpolation
  //
  // ${expression}
  //     -> expression interpolation
  //
  // length
  //     -> number of characters
  //
  // substring()
  //     -> extracts part of String
  //
  // split()
  //     -> String -> List
  //
  // contains()
  //     -> searches for text
  //
  // trim()
  //     -> removes surrounding whitespace
  //
  // toUpperCase()
  //     -> uppercase
  //
  // toLowerCase()
  //     -> lowercase
  //
  // replaceAll()
  //     -> replaces matching text
  //
  // indexOf()
  //     -> finds index
  //
  // []
  //     -> accesses character by index
  //
  // isEmpty
  //     -> checks empty String
  //
  // isNotEmpty
  //     -> checks non-empty String
  //
  // ============================================================
}