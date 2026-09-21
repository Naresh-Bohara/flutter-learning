void main() {
  // ============================================================
  // DART COLLECTIONS: SET, MAP, LIST
  // ============================================================

  // ------------------------------------------------------------
  // 1. SET
  // ------------------------------------------------------------
  // Set stores UNIQUE values.
  // Duplicate values are automatically ignored.

  Set<String> names = {"hari", "sita"};
  Set<String> names2 = {"rohan", "kailash"};

  print(names);
  print(names2);

  // Set does not allow duplicate values.
  Set<String> students = {"Naresh", "Hari", "Naresh"};
  print(students); // {Naresh, Hari}


  // ------------------------------------------------------------
  // 2. MAP
  // ------------------------------------------------------------
  // Map stores data as KEY -> VALUE.
  //
  // Map<String, String>
  // String before comma  = key type
  // String after comma   = value type

  Map<String, String> capital1 = {
    "nepal": "ktm",
    "india": "delhi",
  };

  Map<String, String> capital2 = {
    "china": "beijing",
    "pakistan": "islamabad",
  };


  // Access Map value using its KEY.
  print(capital1["nepal"]); // ktm


  // ------------------------------------------------------------
  // 3. addAll()
  // ------------------------------------------------------------
  // addAll() adds all key-value pairs from one Map
  // into another Map.
  //
  // capital1 will be modified.

  capital1.addAll(capital2);

  print(capital1);

  // Result:
  // {
  //   nepal: ktm,
  //   india: delhi,
  //   china: beijing,
  //   pakistan: islamabad
  // }


  // ------------------------------------------------------------
  // 4. DUPLICATE MAP KEYS
  // ------------------------------------------------------------
  // Map cannot have duplicate keys.
  // If the same key is added again, the new value replaces
  // the old value.

  Map<String, String> data = {
    "name": "Naresh",
    "age": "25",
  };

  data["name"] = "Hari";

  print(data);

  // name is now "Hari"


  // ------------------------------------------------------------
  // 5. MAP WITH DIFFERENT VALUE TYPES
  // ------------------------------------------------------------
  // dynamic allows values of different types.
  //
  // name      -> String
  // age       -> int
  // isStudent -> bool
  // skills    -> List<String>

  Map<String, dynamic> person = {
    "name": "Naresh",
    "age": 25,
    "isStudent": true,
    "skills": ["Dart", "Java", "NestJS"],
  };

  print(person);


  // Access individual Map values using keys.

  print(person["name"]);       // Naresh
  print(person["age"]);        // 25
  print(person["isStudent"]);  // true
  print(person["skills"]);     // [Dart, Java, NestJS]


  // ------------------------------------------------------------
  // 6. LIST INSIDE A MAP
  // ------------------------------------------------------------
  // "skills" contains a List.

  Map<String, dynamic> person2 = {
    "name": "Naresh",
    "skills": ["Dart", "Java", "NestJS"],
  };

  // person2["skills"]
  //        ↓
  // ["Dart", "Java", "NestJS"]
  //
  // [1] means index 1.
  //
  // Index:
  // 0 -> Dart
  // 1 -> Java
  // 2 -> NestJS

  print((person2["skills"] as List)[1]); // Java


  // ------------------------------------------------------------
  // 7. LIST
  // ------------------------------------------------------------
  // List stores ordered values.
  // List uses INDEX to access elements.
  // Index starts from 0.
  // Duplicate values are allowed.

  List<String> skills = [
    "Dart",
    "Java",
    "NestJS",
  ];

  print(skills[0]); // Dart
  print(skills[1]); // Java
  print(skills[2]); // NestJS


  // ------------------------------------------------------------
  // 8. LIST vs SET vs MAP
  // ------------------------------------------------------------

  // List  -> index -> value
  List<String> fruits = ["apple", "banana", "apple"];

  // Set   -> unique values
  Set<String> uniqueFruits = {"apple", "banana", "apple"};

  // Map   -> key -> value
  Map<String, String> countries = {
    "Nepal": "Kathmandu",
    "India": "Delhi",
  };


  // ------------------------------------------------------------
  // IMPORTANT
  // ------------------------------------------------------------

  // List:
  // ["Dart", "Java", "NestJS"]
  //       ↓
  //     index
  //       ↓
  //     [1]
  //
  // Map:
  // {"name": "Naresh"}
  //       ↓
  //      key
  //       ↓
  //    ["name"]
  //
  // Set:
  // {"Dart", "Java", "Dart"}
  //              ↓
  //        duplicates removed


  // ============================================================
  // KEY POINT:
  //
  // List = ordered collection + index
  // Set  = unique collection
  // Map  = key-value collection
  // ============================================================
}