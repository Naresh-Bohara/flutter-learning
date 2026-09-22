void main() {
  // ============================================================
  // DART COLLECTIONS: SET, MAP, LIST
  // ============================================================
  //
  // Collection = an object used to store multiple values.
  //
  // Main Dart collections:
  //
  // List -> ordered values, accessed by index
  // Set  -> unique values, no duplicates
  // Map  -> key-value pairs
  //
  // ============================================================

  // ------------------------------------------------------------
  // 1. SET
  // ------------------------------------------------------------
  // Set stores UNIQUE values.
  // Duplicate values are automatically ignored.
  //
  // Syntax:
  // Set<DataType> variableName = {value1, value2};

  Set<String> names = {"hari", "sita"};

  print(names); // {hari, sita}

  // Add a value

  names.add("rohan");

  print(names); // {hari, sita, rohan}

  // Duplicate value is ignored

  names.add("hari");

  print(names); // {hari, sita, rohan}

  // Add multiple values

  names.addAll({"kailash", "ram"});

  print(names);

  // Remove a value

  names.remove("ram");

  print(names);

  // Check whether a Set contains a value

  print(names.contains("hari")); // true
  print(names.contains("ram")); // false

  // Set does not allow duplicate values.

  Set<String> students = {"Naresh", "Hari", "Naresh"};

  print(students); // {Naresh, Hari}

  // Number of elements

  print(students.length);

  // ------------------------------------------------------------
  // SET IMPORTANT METHODS
  // ------------------------------------------------------------

  // add()       -> add one value
  // addAll()    -> add multiple values
  // remove()    -> remove a value
  // contains()  -> check whether value exists
  // length      -> number of elements
  // isEmpty     -> check whether empty
  // isNotEmpty  -> check whether not empty

  // ============================================================
  // 2. LIST
  // ============================================================
  // List stores ORDERED values.
  // List uses INDEX to access elements.
  // Index starts from 0.
  // Duplicate values are allowed.
  //
  // Syntax:
  // List<DataType> variableName = [value1, value2];

  List<String> skills = ["Dart", "Java", "NestJS"];

  // Access using index

  print(skills[0]); // Dart
  print(skills[1]); // Java
  print(skills[2]); // NestJS

  // Index starts from 0:
  //
  // 0 -> Dart
  // 1 -> Java
  // 2 -> NestJS

  // Add one value

  skills.add("Spring Boot");

  print(skills);

  // Add multiple values

  skills.addAll(["MongoDB", "PostgreSQL"]);

  print(skills);

  // Update value using index

  skills[0] = "Dart Programming";

  print(skills);

  // Remove a value

  skills.remove("Java");

  print(skills);

  // Remove using index

  skills.removeAt(0);

  print(skills);

  // Check whether a value exists

  print(skills.contains("NestJS")); // true

  // Length

  print(skills.length);

  // ------------------------------------------------------------
  // LIST IMPORTANT METHODS
  // ------------------------------------------------------------

  // add()        -> add one value
  // addAll()     -> add multiple values
  // remove()     -> remove specific value
  // removeAt()   -> remove using index
  // contains()   -> check value
  // length       -> number of elements
  // isEmpty      -> check whether empty
  // isNotEmpty   -> check whether not empty

  // ============================================================
  // 3. MAP
  // ============================================================
  // Map stores data as KEY -> VALUE.
  //
  // Syntax:
  //
  // Map<KeyType, ValueType> variableName = {
  //   key: value,
  // };

  Map<String, String> capital = {
    "nepal": "Kathmandu",
    "india": "Delhi",
    "china": "Beijing",
  };

  // Access value using KEY

  print(capital["nepal"]); // Kathmandu
  print(capital["india"]); // Delhi

  // Add a new key-value pair

  capital["japan"] = "Tokyo";

  print(capital);

  // Update existing value

  capital["india"] = "New Delhi";

  print(capital);

  // Remove key-value pair

  capital.remove("china");

  print(capital);

  // Check whether a key exists

  print(capital.containsKey("nepal")); // true

  // Check whether a value exists

  print(capital.containsValue("Kathmandu")); // true

  // Number of key-value pairs

  print(capital.length);

  // ------------------------------------------------------------
  // MAP IMPORTANT METHODS
  // ------------------------------------------------------------

  // map[key]              -> access value
  // map[key] = value      -> add/update
  // remove(key)           -> remove key-value pair
  // containsKey(key)      -> check key
  // containsValue(value)  -> check value
  // length                -> number of pairs
  // isEmpty               -> check whether empty
  // isNotEmpty            -> check whether not empty

  // ============================================================
  // 4. addAll() WITH MAP
  // ============================================================
  // addAll() adds all key-value pairs from one Map
  // into another Map.

  Map<String, String> capital1 = {"nepal": "Kathmandu", "india": "Delhi"};

  Map<String, String> capital2 = {"china": "Beijing", "pakistan": "Islamabad"};

  capital1.addAll(capital2);

  print(capital1);

  // Result:
  //
  // {
  //   nepal: Kathmandu,
  //   india: Delhi,
  //   china: Beijing,
  //   pakistan: Islamabad
  // }

  // ============================================================
  // 5. DUPLICATE MAP KEYS
  // ============================================================
  // Map cannot have duplicate keys.
  //
  // If the same key is added again,
  // the new value replaces the old value.

  Map<String, String> data = {"name": "Naresh", "age": "25"};

  data["name"] = "Hari";

  print(data);

  // Result:
  //
  // {name: Hari, age: 25}

  // ============================================================
  // 6. MAP WITH DYNAMIC VALUES
  // ============================================================
  // dynamic allows different types of values.
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

  // Access individual values using keys

  print(person["name"]); // Naresh
  print(person["age"]); // 25
  print(person["isStudent"]); // true
  print(person["skills"]); // [Dart, Java, NestJS]

  // ============================================================
  // 7. LIST INSIDE A MAP
  // ============================================================
  // A Map can contain a List as its value.

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
  // 0 -> Dart
  // 1 -> Java
  // 2 -> NestJS

  print((person2["skills"] as List)[1]); // Java

  // ============================================================
  // 8. NESTED MAP
  // ============================================================
  // A Map inside another Map is called a Nested Map.

  Map<String, dynamic> student = {
    "name": "Naresh",
    "age": 25,

    "address": {"city": "Dhangadhi", "country": "Nepal"},
  };

  print(student["name"]); // Naresh

  // Access nested Map value

  print((student["address"] as Map)["city"]); // Dhangadhi

  print((student["address"] as Map)["country"]); // Nepal

  // Structure:
  //
  // student
  //    |
  //    └── address
  //          |
  //          ├── city
  //          └── country

  // ============================================================
  // 9. NESTED MAP + LIST
  // ============================================================
  // A Map can contain both another Map and a List.

  Map<String, dynamic> person3 = {
    "name": "Naresh",

    "address": {"city": "Dhangadhi", "country": "Nepal"},

    "skills": ["Dart", "Java", "NestJS"],
  };

  // Nested Map

  print((person3["address"] as Map)["city"]); // Dhangadhi

  // List inside Map

  print((person3["skills"] as List)[1]); // Java

  // ============================================================
  // 10. DEEPLY NESTED MAP
  // ============================================================
  // A Map can contain another Map,
  // which can contain another Map.

  Map<String, dynamic> user = {
    "name": "Naresh",

    "profile": {
      "age": 25,
      "isStudent": true,

      "address": {"city": "Dhangadhi", "country": "Nepal"},
    },
  };

  print(user["name"]); // Naresh

  // Map -> Map -> Map -> value

  print(((user["profile"] as Map)["address"] as Map)["city"]); // Dhangadhi

  // Structure:
  //
  // user
  //   |
  //   └── profile
  //         |
  //         └── address
  //               |
  //               ├── city
  //               └── country

  // ============================================================
  // 11. MAP + NESTED MAP + LIST
  // ============================================================

  Map<String, dynamic> employee = {
    "name": "Naresh",

    "job": {
      "title": "Backend Developer",
      "company": "ABC Company",

      "skills": ["Dart", "Java", "NestJS"],
    },
  };

  print(employee["name"]); // Naresh

  // Nested Map

  print((employee["job"] as Map)["title"]); // Backend Developer

  // Nested List

  print((employee["job"] as Map)["skills"]); // [Dart, Java, NestJS]

  // Access List element inside nested Map

  print(((employee["job"] as Map)["skills"] as List)[1]); // Java

  // Structure:
  //
  // employee
  //    |
  //    └── job
  //         |
  //         ├── title
  //         ├── company
  //         |
  //         └── skills
  //                |
  //                ├── [0] Dart
  //                ├── [1] Java
  //                └── [2] NestJS

  // ============================================================
  // 12. LIST vs SET vs MAP
  // ============================================================

  // ------------------------------------------------------------
  // LIST
  // ------------------------------------------------------------
  // Ordered collection.
  // Accessed using INDEX.
  // Duplicates are allowed.

  List<String> fruits = ["apple", "banana", "apple"];

  print(fruits[0]); // apple

  // ------------------------------------------------------------
  // SET
  // ------------------------------------------------------------
  // Unique collection.
  // Duplicates are not allowed.

  Set<String> uniqueFruits = {"apple", "banana", "apple"};

  print(uniqueFruits); // {apple, banana}

  // ------------------------------------------------------------
  // MAP
  // ------------------------------------------------------------
  // Key-value collection.
  // Accessed using KEY.
  // Keys must be unique.

  Map<String, String> countries = {"Nepal": "Kathmandu", "India": "Delhi"};

  print(countries["Nepal"]); // Kathmandu

  // ============================================================
  // 13. LIST vs SET vs MAP - QUICK DIFFERENCE
  // ============================================================
  //
  // List:
  // ["Dart", "Java", "NestJS"]
  //       ↓
  //     index
  //       ↓
  //      [1]
  //       ↓
  //     Java
  //
  //
  // Set:
  // {"Dart", "Java", "Dart"}
  //                    ↓
  //              duplicate ignored
  //
  //
  // Map:
  // {"name": "Naresh"}
  //       ↓
  //      key
  //       ↓
  //    ["name"]
  //       ↓
  //    Naresh
  //
  //
  // ============================================================
  // KEY POINT
  // ============================================================
  //
  // List = ordered collection + index
  //
  // Set  = unique collection
  //
  // Map  = key-value collection
  //
  // List  -> index -> value
  // Set   -> value
  // Map   -> key -> value
  //
  // ============================================================
}
