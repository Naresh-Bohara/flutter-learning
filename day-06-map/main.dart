void main() {
  // ============================================================
  // MAP
  // ============================================================

  // Map stores data in KEY -> VALUE format.

  Map<String, String> capital = {
    "nepal": "Kathmandu",
    "india": "Delhi",
    "china": "Beijing",
  };

  // Access value using key
  print(capital["nepal"]); // Kathmandu

  // Add new key-value pair
  capital["japan"] = "Tokyo";

  // Update existing value
  capital["india"] = "New Delhi";

  // Remove key-value pair
  capital.remove("china");

  print(capital);


  // ============================================================
  // MAP WITH DYNAMIC VALUES
  // ============================================================

  // dynamic allows different types of values.

  Map<String, dynamic> person = {
    "name": "Naresh",
    "age": 25,
    "isStudent": true,
    "skills": ["Dart", "Java", "NestJS"],
  };

  print(person["name"]);       // Naresh
  print(person["age"]);        // 25
  print(person["isStudent"]);  // true
  print((person["skills"] as List)[1]); // Java


  // ============================================================
  // NESTED MAP
  // ============================================================

  // A Map inside another Map is called a Nested Map.

  Map<String, dynamic> student = {
    "name": "Naresh",
    "age": 25,

    "address": {
      "city": "Dhangadhi",
      "country": "Nepal",
    },
  };

  print(student["name"]); // Naresh

  // Access nested Map value:
  print((student["address"] as Map)["city"]); // Dhangadhi

  print((student["address"] as Map)["country"]); // Nepal


  // ============================================================
  // NESTED MAP + LIST
  // ============================================================

  Map<String, dynamic> person2 = {
    "name": "Naresh",

    "address": {
      "city": "Dhangadhi",
      "country": "Nepal",
    },

    "skills": [
      "Dart",
      "Java",
      "NestJS",
    ],
  };

  // Nested Map
  print((person2["address"] as Map)["city"]); // Dhangadhi

  // List inside Map
  print((person2["skills"] as List)[1]); // Java


  // ============================================================
  // NESTED MAP WITH MULTIPLE OBJECTS
  // ============================================================

  Map<String, dynamic> user = {
    "name": "Naresh",

    "profile": {
      "age": 25,
      "isStudent": true,

      "address": {
        "city": "Dhangadhi",
        "country": "Nepal",
      },
    },
  };

  print(user["name"]); // Naresh

  // Map -> Map -> value
  print(
    ((user["profile"] as Map)["address"] as Map)["city"],
  ); // Dhangadhi


  // ============================================================
  // MAP + NESTED MAP + LIST
  // ============================================================

  Map<String, dynamic> employee = {
    "name": "Naresh",

    "job": {
      "title": "Backend Developer",
      "company": "ABC Company",

      "skills": [
        "Dart",
        "Java",
        "NestJS",
      ],
    },
  };

  print(employee["name"]); // Naresh

  // Nested Map
  print((employee["job"] as Map)["title"]); // Backend Developer

  // Nested List
  print((employee["job"] as Map)["skills"]); // [Dart, Java, NestJS]

  // Access List element inside nested Map
  print(
    ((employee["job"] as Map)["skills"] as List)[1],
  ); // Java


  // ============================================================
  // KEY CONCEPT
  // ============================================================

  // Map:
  // Map -> key -> value
  //
  // Nested Map:
  // Map -> key -> Map -> key -> value
  //
  // Map + List:
  // Map -> key -> List -> index -> value
  //
  // Example:
  //
  // employee
  //    |
  //    └── job
  //         |
  //         └── skills
  //              |
  //              └── [1]
  //                   |
  //                   └── Java
}