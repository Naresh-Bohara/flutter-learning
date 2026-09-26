void main() {

  // ============================================================
  // DART - DAY 5
  // COLLECTIONS: MAP
  // ============================================================

  // ============================================================
  // 1. WHAT IS A MAP?
  // ============================================================

  // Map stores data in KEY -> VALUE format.
  //
  // Example:
  //
  // "name" -> "Naresh"
  // "age"  -> 25
  //
  // KEY is used to access the VALUE.
  //
  // Important:
  // - Keys must be unique.
  // - Values can be duplicated.


  // ============================================================
  // 2. CREATING A MAP
  // ============================================================

  Map<String, String> capital = {
    "nepal": "Kathmandu",
    "india": "Delhi",
    "china": "Beijing",
  };

  print(capital);


  // ============================================================
  // 3. ACCESS VALUE USING KEY
  // ============================================================

  print(capital["nepal"]);

  // Kathmandu


  // ============================================================
  // 4. ADD NEW KEY-VALUE
  // ============================================================

  capital["japan"] = "Tokyo";

  print(capital);


  // ============================================================
  // 5. UPDATE VALUE
  // ============================================================

  capital["india"] = "New Delhi";

  print(capital);

  // If key already exists,
  // the old value is replaced.


  // ============================================================
  // 6. REMOVE
  // ============================================================

  capital.remove("china");

  print(capital);

  // remove() removes using the KEY.


  // ============================================================
  // 7. containsKey()
  // ============================================================

  print(capital.containsKey("nepal"));

  // true

  print(capital.containsKey("japan"));

  // true


  // ============================================================
  // 8. containsValue()
  // ============================================================

  print(capital.containsValue("Kathmandu"));

  // true


  // ============================================================
  // 9. length
  // ============================================================

  print(capital.length);

  // Number of key-value pairs.


  // ============================================================
  // 10. keys AND values
  // ============================================================

  print(capital.keys);

  // All keys

  print(capital.values);

  // All values


  // ============================================================
  // 11. addAll()
  // ============================================================

  capital.addAll({
    "japan": "Tokyo",
    "korea": "Seoul",
  });

  print(capital);

  // Adds multiple key-value pairs.


  // ============================================================
  // 12. putIfAbsent()
  // ============================================================

  capital.putIfAbsent(
    "nepal",
    () => "Pokhara",
  );

  print(capital);

  // Does NOT update if key already exists.
  // Kathmandu remains unchanged.


  // ============================================================
  // 13. clear()
  // ============================================================

  capital.clear();

  print(capital);

  // {}


  // ============================================================
  // 14. LOOP THROUGH MAP
  // ============================================================

  Map<String, int> marks = {
    "Math": 80,
    "Science": 90,
    "English": 85,
  };

  marks.forEach((key, value) {
    print("$key -> $value");
  });


  // ============================================================
  // 15. MAP WITH DYNAMIC VALUES
  // ============================================================

  // dynamic allows different types of values.

  Map<String, dynamic> person = {
    "name": "Naresh",
    "age": 25,
    "isStudent": true,
  };

  print(person["name"]);
  print(person["age"]);
  print(person["isStudent"]);


  // ============================================================
  // 16. MAP WITH LIST
  // ============================================================

  Map<String, dynamic> user = {
    "name": "Naresh",
    "skills": [
      "Dart",
      "Java",
      "NestJS",
    ],
  };

  print((user["skills"] as List)[1]);

  // Java

  // Map -> key -> List -> index -> value


  // ============================================================
  // 17. NESTED MAP
  // ============================================================

  Map<String, dynamic> student = {
    "name": "Naresh",

    "address": {
      "city": "Dhangadhi",
      "country": "Nepal",
    },
  };

  print(
    (student["address"] as Map)["city"],
  );

  // Dhangadhi

  // Map -> key -> Map -> key -> value


  // ============================================================
  // MAP VS LIST VS SET
  // ============================================================

  // LIST:
  // index -> value
  //
  // names[0]


  // SET:
  // unique values
  //
  // names.contains("Ram")


  // MAP:
  // key -> value
  //
  // person["name"]


  // ============================================================
  // MAP CORE CONCEPT
  // ============================================================

  // Map = KEY -> VALUE
  //
  // Example:
  //
  // {
  //   "name": "Naresh",
  //   "age": 25
  // }
  //
  // "name" -> "Naresh"
  // "age"  -> 25


  // ============================================================
  // DAY 5 FINAL SUMMARY
  // ============================================================

  // Map<K, V>
  //     -> typed Map
  //
  // map[key]
  //     -> access value
  //
  // map[key] = value
  //     -> add / update
  //
  // remove()
  //     -> remove by key
  //
  // containsKey()
  //     -> check key
  //
  // containsValue()
  //     -> check value
  //
  // addAll()
  //     -> add multiple entries
  //
  // putIfAbsent()
  //     -> add only if key doesn't exist
  //
  // keys
  //     -> all keys
  //
  // values
  //     -> all values
  //
  // length
  //     -> number of entries
  //
  // forEach()
  //     -> loop through key and value
  //
  // clear()
  //     -> remove everything

}