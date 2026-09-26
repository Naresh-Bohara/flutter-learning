void main() {

  // ============================================================
  // DART - DAY 5
  // COLLECTIONS: SET
  // ============================================================


  // ============================================================
  // 1. WHAT IS A SET?
  // ============================================================

  // Set is a collection of UNIQUE values.
  //
  // A Set:
  // - does not allow duplicate values
  // - automatically ignores duplicate values
  // - stores each value only once
  //
  // Example:
  //
  // {"Ram", "Hari", "Ram"}
  //
  // becomes:
  //
  // {"Ram", "Hari"}


  // ============================================================
  // 2. CREATING A SET
  // ============================================================

  Set<String> names = {
    "Hari",
    "Sita",
    "Rohan",
  };

  print(names);

  // Output:
  // {Hari, Sita, Rohan}


  // ============================================================
  // 3. SET OF int
  // ============================================================

  Set<int> numbers = {
    10,
    20,
    30,
    40,
  };

  print(numbers);


  // ============================================================
  // 4. SET OF double
  // ============================================================

  Set<double> prices = {
    10.5,
    20.5,
    30.5,
  };

  print(prices);


  // ============================================================
  // 5. DUPLICATE VALUES
  // ============================================================

  Set<String> students = {
    "Naresh",
    "Hari",
    "Naresh",
  };

  print(students);

  // Output:
  // {Naresh, Hari}
  //
  // "Naresh" appears twice in the code,
  // but Set stores it only once.


  // ============================================================
  // 6. add()
  // ============================================================

  // add() adds ONE value to the Set.

  Set<String> names = {
    "Hari",
    "Sita",
  };

  names.add("Rohan");

  print(names);

  // {Hari, Sita, Rohan}


  // ============================================================
  // 7. add() WITH DUPLICATE
  // ============================================================

  Set<String> names = {
    "Hari",
    "Sita",
  };

  names.add("Hari");

  print(names);

  // {Hari, Sita}
  //
  // Hari is already present,
  // so the duplicate is ignored.


  // ============================================================
  // 8. addAll()
  // ============================================================

  // addAll() adds MULTIPLE values.

  Set<String> names = {
    "Hari",
    "Sita",
  };

  names.addAll({
    "Rohan",
    "Ram",
    "Kailash",
  });

  print(names);


  // ============================================================
  // 9. addAll() WITH DUPLICATES
  // ============================================================

  Set<int> numbers = {
    10,
    20,
  };

  numbers.addAll({
    20,
    30,
    40,
    10,
  });

  print(numbers);

  // Result contains each value only once.


  // ============================================================
  // 10. remove()
  // ============================================================

  // remove() removes a specific value.

  Set<String> names = {
    "Ram",
    "Hari",
    "Rohan",
  };

  names.remove("Hari");

  print(names);

  // {Ram, Rohan}


  // If the value does not exist,
  // the Set remains unchanged.

  names.remove("Sita");

  print(names);


  // ============================================================
  // 11. contains()
  // ============================================================

  // contains() checks whether a value exists.
  //
  // Returns:
  // true  -> value exists
  // false -> value does not exist

  Set<String> names = {
    "Hari",
    "Sita",
    "Rohan",
  };

  print(names.contains("Hari"));

  // true

  print(names.contains("Ram"));

  // false


  // ============================================================
  // 12. length
  // ============================================================

  // length returns the number of UNIQUE elements.

  Set<String> students = {
    "Naresh",
    "Hari",
    "Naresh",
    "Ram",
  };

  print(students.length);

  // Output:
  // 3
  //
  // Because Naresh is stored only once.


  // ============================================================
  // 13. isEmpty
  // ============================================================

  // Checks whether the Set contains no elements.

  Set<int> numbers = {};

  print(numbers.isEmpty);

  // true


  // ============================================================
  // 14. isNotEmpty
  // ============================================================

  // Checks whether the Set contains at least one element.

  Set<int> numbers = {
    10,
    20,
  };

  print(numbers.isNotEmpty);

  // true


  // ============================================================
  // 15. clear()
  // ============================================================

  // clear() removes ALL elements from the Set.

  Set<String> names = {
    "Ram",
    "Hari",
    "Rohan",
  };

  names.clear();

  print(names);

  // Output:
  // {}


  // ============================================================
  // 16. LOOP THROUGH A SET
  // ============================================================

  // A Set can be iterated using for-in.

  Set<String> names = {
    "Ram",
    "Hari",
    "Rohan",
  };

  for (String name in names) {
    print(name);
  }


  // ============================================================
  // 17. SET DOES NOT USE INDEX
  // ============================================================

  Set<String> names = {
    "Ram",
    "Hari",
    "Rohan",
  };

  // You cannot normally access a Set like a List:
  //
  // names[0]
  //
  // A Set is not accessed using numeric indexes.
  //
  // Use:
  //
  // contains()
  //
  // or loop through it.


  // ============================================================
  // 18. SET AND DUPLICATES
  // ============================================================

  Set<int> numbers = {
    1,
    2,
    3,
    3,
    4,
    4,
    5,
  };

  print(numbers);

  // Output:
  // {1, 2, 3, 4, 5}


  // ============================================================
  // 19. PRACTICAL USE: REMOVE DUPLICATES
  // ============================================================

  // Suppose a List contains duplicate values.
  //
  // Converting it to a Set removes duplicates.

  List<int> numbers = [
    10,
    20,
    20,
    30,
    30,
    40,
  ];

  Set<int> uniqueNumbers = numbers.toSet();

  print(uniqueNumbers);

  // Output:
  // {10, 20, 30, 40}


  // ============================================================
  // 20. SET OPERATIONS
  // ============================================================

  // Set is especially useful for mathematical set operations.
  //
  // Important operations:
  //
  // union
  // intersection
  // difference


  // ============================================================
  // 21. UNION
  // ============================================================

  // union() combines values from both Sets.
  //
  // Duplicate values remain only once.

  Set<int> setA = {
    1,
    2,
    3,
  };

  Set<int> setB = {
    3,
    4,
    5,
  };

  print(setA.union(setB));

  // Output:
  // {1, 2, 3, 4, 5}


  // ============================================================
  // 22. INTERSECTION
  // ============================================================

  // intersection() returns values that exist
  // in BOTH Sets.

  Set<int> setA = {
    1,
    2,
    3,
  };

  Set<int> setB = {
    3,
    4,
    5,
  };

  print(setA.intersection(setB));

  // Output:
  // {3}


  // ============================================================
  // 23. DIFFERENCE
  // ============================================================

  // difference() returns values that exist in the
  // first Set but NOT in the second Set.

  Set<int> setA = {
    1,
    2,
    3,
  };

  Set<int> setB = {
    3,
    4,
    5,
  };

  print(setA.difference(setB));

  // Output:
  // {1, 2}


  // ============================================================
  // 24. DIFFERENCE IN THE OTHER DIRECTION
  // ============================================================

  print(setB.difference(setA));

  // Output:
  // {4, 5}


  // IMPORTANT:
  //
  // A.difference(B)
  //
  // means:
  //
  // values in A that are NOT in B.


  // ============================================================
  // 25. union() VS intersection() VS difference()
  // ============================================================

  // A = {1, 2, 3}
  // B = {3, 4, 5}
  //
  //
  // A.union(B)
  //     -> {1, 2, 3, 4, 5}
  //
  //
  // A.intersection(B)
  //     -> {3}
  //
  //
  // A.difference(B)
  //     -> {1, 2}


  // ============================================================
  // 26. containsAll()
  // ============================================================

  // containsAll() checks whether a Set contains
  // ALL values from another collection.

  Set<int> numbers = {
    1,
    2,
    3,
    4,
    5,
  };

  print(numbers.containsAll({
    1,
    2,
    3,
  }));

  // true


  print(numbers.containsAll({
    1,
    2,
    10,
  }));

  // false


  // ============================================================
  // 27. SUBSET
  // ============================================================

  // A Set is a subset if all of its values
  // exist inside another Set.

  Set<int> mainSet = {
    1,
    2,
    3,
    4,
    5,
  };

  Set<int> smallSet = {
    1,
    2,
    3,
  };

  print(mainSet.containsAll(smallSet));

  // true


  // ============================================================
  // 28. SET FROM LIST
  // ============================================================

  // toSet() converts a List into a Set.

  List<String> names = [
    "Ram",
    "Hari",
    "Ram",
    "Rohan",
    "Hari",
  ];

  Set<String> uniqueNames = names.toSet();

  print(uniqueNames);

  // Duplicates are removed.


  // ============================================================
  // 29. LIST FROM SET
  // ============================================================

  // toList() converts a Set into a List.

  Set<String> names = {
    "Ram",
    "Hari",
    "Rohan",
  };

  List<String> nameList = names.toList();

  print(nameList);


  // ============================================================
  // 30. SET WITH DIFFERENT DATA TYPES
  // ============================================================

  // Normally use a specific type:

  Set<String> names = {
    "Ram",
    "Hari",
  };


  // If different types are genuinely required,
  // dynamic can be used:

  Set<dynamic> data = {
    "Ram",
    23,
    5.5,
    true,
  };

  print(data);


  // ============================================================
  // 31. SET WITH OBJECTS / CUSTOM VALUES
  // ============================================================

  // Set can also contain objects.
  //
  // For beginner-level Dart, remember:
  //
  // Set<T>
  //
  // where T is the type of value stored.


  // ============================================================
  // 32. IMPORTANT SET METHODS
  // ============================================================

  // add()
  //     -> add one value
  //
  // addAll()
  //     -> add multiple values
  //
  // remove()
  //     -> remove a value
  //
  // contains()
  //     -> check whether a value exists
  //
  // containsAll()
  //     -> check whether all given values exist
  //
  // clear()
  //     -> remove all values
  //
  // length
  //     -> number of unique values
  //
  // isEmpty
  //     -> check whether Set is empty
  //
  // isNotEmpty
  //     -> check whether Set is not empty
  //
  // union()
  //     -> combine two Sets
  //
  // intersection()
  //     -> common values
  //
  // difference()
  //     -> values in first Set but not second
  //
  // toList()
  //     -> convert Set to List
  //
  // ============================================================


  // ============================================================
  // 33. PRACTICAL EXAMPLE
  // ============================================================

  Set<String> skills = {
    "Dart",
    "Java",
    "Dart",
    "NestJS",
    "Java",
  };

  print(skills);

  // Output:
  // {Dart, Java, NestJS}

  print(skills.contains("Dart"));

  // true

  skills.add("Spring Boot");

  print(skills);

  skills.remove("Java");

  print(skills);

  print(skills.length);


  // ============================================================
  // 34. SET VS LIST - ONLY IMPORTANT DIFFERENCE
  // ============================================================

  // LIST:
  //
  // List<String> names = [
  //   "Ram",
  //   "Hari",
  //   "Ram",
  // ];
  //
  // Duplicates are allowed.
  // Access using index.
  //
  //
  // SET:
  //
  // Set<String> names = {
  //   "Ram",
  //   "Hari",
  //   "Ram",
  // };
  //
  // Duplicates are ignored.
  // Not accessed using normal numeric indexing.


  // ============================================================
  // 35. SET CORE CONCEPT
  // ============================================================

  // Set = UNIQUE COLLECTION
  //
  // Example:
  //
  // Input:
  //
  // {10, 20, 20, 30, 30}
  //
  // Stored:
  //
  // {10, 20, 30}


  // ============================================================
  // DAY 5 FINAL SUMMARY
  // ============================================================

  // Set<T>
  //     -> creates a typed Set
  //
  // add()
  //     -> add one
  //
  // addAll()
  //     -> add multiple
  //
  // remove()
  //     -> remove value
  //
  // contains()
  //     -> check value
  //
  // containsAll()
  //     -> check multiple values
  //
  // length
  //     -> number of unique values
  //
  // isEmpty
  //     -> empty or not
  //
  // isNotEmpty
  //     -> contains values or not
  //
  // clear()
  //     -> remove everything
  //
  // union()
  //     -> all unique values from both Sets
  //
  // intersection()
  //     -> common values
  //
  // difference()
  //     -> values only in the first Set
  //
  // toSet()
  //     -> convert List to Set
  //
  // toList()
  //     -> convert Set to List
  //
  // ============================================================
}