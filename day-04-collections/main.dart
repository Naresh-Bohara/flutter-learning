void main() {

  // ============================================================
  // DART - DAY 4
  // COLLECTIONS: LIST
  // ============================================================


  // ============================================================
  // 1. WHAT IS A LIST?
  // ============================================================

  // List is an ORDERED collection of items.
  //
  // A List:
  // - stores multiple values
  // - maintains insertion order
  // - allows duplicate values
  // - uses INDEX to access elements
  // - index starts from 0
  //
  // Example:
  //
  //        0       1       2
  //      ┌─────┬───────┬───────┐
  //      │ Ram │ Hari  │ Rohan │
  //      └─────┴───────┴───────┘


  // ============================================================
  // 2. CREATING A LIST
  // ============================================================

  List<String> names = ["Ram", "Hari", "Rohan"];

  print(names);


  // List<int> -> List containing integers

  List<int> nums = [12, 23, 34, 45, 65];

  print(nums);


  // ============================================================
  // 3. LIST OF STRING
  // ============================================================

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
    "Sita",
  ];

  print(names);


  // ============================================================
  // 4. LIST OF int
  // ============================================================

  List<int> numbers = [
    10,
    20,
    30,
    40,
  ];

  print(numbers);


  // ============================================================
  // 5. LIST OF double
  // ============================================================

  List<double> prices = [
    10.5,
    20.5,
    30.5,
  ];

  print(prices);


  // ============================================================
  // 6. DYNAMIC LIST
  // ============================================================

  // List<dynamic> can contain different types of values.

  List<dynamic> data = [
    12,
    23,
    "Hari",
    "Roshan",
    2.33,
    true,
  ];

  print(data);


  // IMPORTANT:
  //
  // Prefer a specific type such as List<String> or List<int>
  // when all elements are expected to have the same type.
  //
  // List<dynamic> should be used only when mixed types are
  // actually required.


  // ============================================================
  // 7. LIST LENGTH
  // ============================================================

  // .length returns the number of elements.

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names.length);

  // Output:
  // 3


  // ============================================================
  // 8. ACCESS LIST ELEMENT USING INDEX
  // ============================================================

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names[0]); // Ram
  print(names[1]); // Hari
  print(names[2]); // Rohan


  // Index starts from 0.
  //
  // Ram    -> 0
  // Hari   -> 1
  // Rohan  -> 2


  // ============================================================
  // 9. LAST ELEMENT
  // ============================================================

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names.last);

  // Output:
  // Rohan


  // ============================================================
  // 10. FIRST ELEMENT
  // ============================================================

  print(names.first);

  // Output:
  // Ram


  // ============================================================
  // 11. UPDATE A LIST ELEMENT
  // ============================================================

  // Use its index to update an element.

  List<int> nums = [12, 23, 34, 45];

  nums[0] = 100;

  print(nums);

  // Output:
  // [100, 23, 34, 45]


  // Another example:

  nums[2] = 500;

  print(nums);

  // [100, 23, 500, 45]


  // ============================================================
  // 12. add()
  // ============================================================

  // add() adds ONE element to the end of the List.

  List<int> nums = [10, 20, 30];

  nums.add(40);

  print(nums);

  // Output:
  // [10, 20, 30, 40]


  // ============================================================
  // 13. addAll()
  // ============================================================

  // addAll() adds MULTIPLE elements to the end.

  List<int> nums = [10, 20, 30];

  nums.addAll([40, 50, 60]);

  print(nums);

  // Output:
  // [10, 20, 30, 40, 50, 60]


  // ============================================================
  // 14. insert()
  // ============================================================

  // insert(index, value)
  //
  // Adds an element at a specific index.

  List<int> nums = [10, 20, 30];

  nums.insert(1, 100);

  print(nums);

  // Output:
  // [10, 100, 20, 30]


  // Existing elements are shifted to the right.


  // ============================================================
  // 15. insertAll()
  // ============================================================

  // insertAll(index, list)
  //
  // Inserts multiple elements at a specific index.

  List<int> nums = [10, 20, 30];

  nums.insertAll(1, [100, 200, 300]);

  print(nums);

  // Output:
  // [10, 100, 200, 300, 20, 30]


  // ============================================================
  // 16. remove()
  // ============================================================

  // remove(value) removes the first matching value.

  List<int> nums = [10, 20, 30, 20, 40];

  nums.remove(20);

  print(nums);

  // Output:
  // [10, 30, 20, 40]


  // Only the FIRST 20 is removed.


  // ============================================================
  // 17. removeAt()
  // ============================================================

  // removeAt(index) removes an element using its index.

  List<int> nums = [10, 20, 30, 40];

  nums.removeAt(1);

  print(nums);

  // Output:
  // [10, 30, 40]


  // Element at index 1 was removed.


  // ============================================================
  // 18. removeLast()
  // ============================================================

  // Removes the last element.

  List<int> nums = [10, 20, 30, 40];

  nums.removeLast();

  print(nums);

  // Output:
  // [10, 20, 30]


  // ============================================================
  // 19. removeRange()
  // ============================================================

  // removeRange(start, end)
  //
  // Removes elements from start index up to,
  // but NOT including, end index.

  List<int> nums = [10, 20, 30, 40, 50];

  nums.removeRange(1, 3);

  print(nums);

  // Removed:
  // index 1 -> 20
  // index 2 -> 30
  //
  // Output:
  // [10, 40, 50]


  // ============================================================
  // 20. CLEAR
  // ============================================================

  // clear() removes ALL elements.

  List<int> nums = [10, 20, 30];

  nums.clear();

  print(nums);

  // Output:
  // []


  // ============================================================
  // 21. contains()
  // ============================================================

  // Checks whether a List contains a particular value.

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names.contains("Hari"));

  // true

  print(names.contains("Sita"));

  // false


  // ============================================================
  // 22. indexOf()
  // ============================================================

  // Finds the index of the first matching element.

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names.indexOf("Hari"));

  // Output:
  // 1


  // If the value does not exist:
  //
  // indexOf() returns -1.

  print(names.indexOf("Sita"));

  // -1


  // ============================================================
  // 23. lastIndexOf()
  // ============================================================

  // Finds the index of the LAST matching element.

  List<int> nums = [10, 20, 30, 20, 40];

  print(nums.lastIndexOf(20));

  // Output:
  // 3


  // ============================================================
  // 24. isEmpty
  // ============================================================

  // Checks whether the List contains zero elements.

  List<int> nums = [];

  print(nums.isEmpty);

  // true


  // ============================================================
  // 25. isNotEmpty
  // ============================================================

  // Checks whether the List contains at least one element.

  List<int> nums = [10, 20];

  print(nums.isNotEmpty);

  // true


  // ============================================================
  // 26. reversed
  // ============================================================

  // reversed gives the elements in reverse order.
  //
  // It returns an Iterable, so to get a List:
  //
  // .toList()

  List<int> nums = [10, 20, 30, 40];

  print(nums.reversed);

  print(nums.reversed.toList());

  // Output:
  // [40, 30, 20, 10]


  // ============================================================
  // 27. reverse
  // ============================================================

  // reverse is a method of List that changes the original List.

  List<int> nums = [10, 20, 30, 40];

  nums.reverse();

  print(nums);

  // Output:
  // [40, 30, 20, 10]


  // IMPORTANT:
  //
  // reversed -> returns reversed Iterable
  //
  // reverse() -> modifies the original List


  // ============================================================
  // 28. SORT
  // ============================================================

  // sort() sorts the List.

  List<int> nums = [50, 10, 40, 20, 30];

  nums.sort();

  print(nums);

  // Output:
  // [10, 20, 30, 40, 50]


  // ============================================================
  // 29. SORT STRING LIST
  // ============================================================

  List<String> names = [
    "Rohan",
    "Hari",
    "Ram",
    "Amit",
  ];

  names.sort();

  print(names);

  // Sorted alphabetically.


  // ============================================================
  // 30. SHUFFLE
  // ============================================================

  // shuffle() randomly changes the order of elements.

  List<int> nums = [1, 2, 3, 4, 5];

  nums.shuffle();

  print(nums);


  // ============================================================
  // 31. LOOP THROUGH A LIST USING FOR
  // ============================================================

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }

  // Output:
  // Ram
  // Hari
  // Rohan


  // ============================================================
  // 32. LOOP THROUGH A LIST USING FOR-IN
  // ============================================================

  // for-in directly gives each element.

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  for (String name in names) {
    print(name);
  }


  // ============================================================
  // 33. LIST WITH INDEX + VALUE
  // ============================================================

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  for (int i = 0; i < names.length; i++) {
    print("Index: $i, Name: ${names[i]}");
  }


  // ============================================================
  // 34. LIST CAN CONTAIN DUPLICATES
  // ============================================================

  List<int> nums = [
    10,
    20,
    20,
    30,
    30,
  ];

  print(nums);

  // Output:
  // [10, 20, 20, 30, 30]

  // List allows duplicate values.


  // ============================================================
  // 35. LIST MAINTAINS ORDER
  // ============================================================

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names);

  // The order is maintained:
  //
  // Ram
  // Hari
  // Rohan


  // ============================================================
  // 36. LIST INDEX OUT OF RANGE
  // ============================================================

  List<int> nums = [10, 20, 30];

  // Valid indexes:
  //
  // 0 -> 10
  // 1 -> 20
  // 2 -> 30
  //
  // print(nums[3]); // ERROR
  //
  // Because index 3 does not exist.


  // ============================================================
  // 37. LIST OF LIST
  // ============================================================

  // A List can contain other Lists.

  List<List<int>> numbers = [
    [1, 2, 3],
    [4, 5, 6],
  ];

  print(numbers);

  print(numbers[0]);

  // [1, 2, 3]

  print(numbers[0][1]);

  // 2


  // ============================================================
  // 38. COPY A LIST
  // ============================================================

  List<int> original = [10, 20, 30];

  List<int> copy = List.from(original);

  copy.add(40);

  print(original);

  // [10, 20, 30]

  print(copy);

  // [10, 20, 30, 40]


  // ============================================================
  // 39. List.from()
  // ============================================================

  // Creates a new List from another collection.

  List<int> numbers = [10, 20, 30];

  List<int> newNumbers = List.from(numbers);

  print(newNumbers);


  // ============================================================
  // 40. List.generate()
  // ============================================================

  // Creates a List using a function.

  List<int> numbers = List.generate(
    5,
    (index) => index + 1,
  );

  print(numbers);

  // Output:
  // [1, 2, 3, 4, 5]


  // ============================================================
  // 41. WHERE
  // ============================================================

  // where() filters elements based on a condition.
  //
  // It returns an Iterable.
  // Use toList() if you want a List.

  List<int> numbers = [
    10,
    15,
    20,
    25,
    30,
  ];

  List<int> evenNumbers = numbers
      .where((number) => number.isEven)
      .toList();

  print(evenNumbers);

  // Output:
  // [10, 20, 30]


  // ============================================================
  // 42. MAP METHOD
  // ============================================================

  // NOTE:
  // This is the List.map() METHOD.
  //
  // It is NOT the Map collection.
  //
  // map() transforms every element.

  List<int> numbers = [1, 2, 3];

  List<int> doubled = numbers
      .map((number) => number * 2)
      .toList();

  print(doubled);

  // Output:
  // [2, 4, 6]


  // ============================================================
  // 43. EVERY
  // ============================================================

  // every() checks whether ALL elements satisfy a condition.

  List<int> numbers = [2, 4, 6, 8];

  print(numbers.every((number) => number.isEven));

  // true


  // ============================================================
  // 44. ANY
  // ============================================================

  // any() checks whether AT LEAST ONE element
  // satisfies a condition.

  List<int> numbers = [1, 3, 5, 8];

  print(numbers.any((number) => number.isEven));

  // true
  //
  // Because 8 is even.


  // ============================================================
  // 45. FIRSTWHERE
  // ============================================================

  // firstWhere() returns the first element
  // satisfying a condition.

  List<int> numbers = [1, 3, 4, 6, 7];

  int result = numbers.firstWhere(
    (number) => number.isEven,
  );

  print(result);

  // Output:
  // 4


  // ============================================================
  // 46. TAKE
  // ============================================================

  // take(n) returns the first n elements.

  List<int> numbers = [10, 20, 30, 40, 50];

  print(numbers.take(3).toList());

  // Output:
  // [10, 20, 30]


  // ============================================================
  // 47. SKIP
  // ============================================================

  // skip(n) skips the first n elements.

  List<int> numbers = [10, 20, 30, 40, 50];

  print(numbers.skip(2).toList());

  // Output:
  // [30, 40, 50]


  // ============================================================
  // 48. JOIN
  // ============================================================

  // join() combines List elements into a String.

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names.join(", "));

  // Output:
  // Ram, Hari, Rohan


  // ============================================================
  // 49. ASMAP
  // ============================================================

  // asMap() converts List indexes into keys.
  //
  // It creates a Map view:
  //
  // index -> value

  List<String> names = [
    "Ram",
    "Hari",
    "Rohan",
  ];

  print(names.asMap());

  // Output:
  // {0: Ram, 1: Hari, 2: Rohan}


  // ============================================================
  // 50. IMPORTANT LIST METHODS SUMMARY
  // ============================================================

  // length
  //     -> number of elements
  //
  // first
  //     -> first element
  //
  // last
  //     -> last element
  //
  // add()
  //     -> add one element at end
  //
  // addAll()
  //     -> add multiple elements
  //
  // insert()
  //     -> insert one element at index
  //
  // insertAll()
  //     -> insert multiple elements
  //
  // remove()
  //     -> remove first matching value
  //
  // removeAt()
  //     -> remove using index
  //
  // removeLast()
  //     -> remove last element
  //
  // removeRange()
  //     -> remove a range
  //
  // clear()
  //     -> remove everything
  //
  // contains()
  //     -> check whether value exists
  //
  // indexOf()
  //     -> find first index
  //
  // lastIndexOf()
  //     -> find last index
  //
  // isEmpty
  //     -> check whether List is empty
  //
  // isNotEmpty
  //     -> check whether List is not empty
  //
  // sort()
  //     -> sort List
  //
  // shuffle()
  //     -> randomly reorder List
  //
  // reverse()
  //     -> reverse original List
  //
  // reversed
  //     -> reversed Iterable
  //
  // where()
  //     -> filter elements
  //
  // map()
  //     -> transform elements
  //
  // every()
  //     -> check whether all satisfy condition
  //
  // any()
  //     -> check whether at least one satisfies condition
  //
  // firstWhere()
  //     -> find first matching element
  //
  // take()
  //     -> take first n elements
  //
  // skip()
  //     -> skip first n elements
  //
  // join()
  //     -> combine elements into String
  //
  // asMap()
  //     -> index becomes key


  // ============================================================
  // 51. LIST CORE CONCEPT
  // ============================================================

  // List is:
  //
  // ORDERED
  // INDEXED
  // DUPLICATES ALLOWED
  //
  //
  // Example:
  //
  // List<String> names = [
  //   "Ram",
  //   "Hari",
  //   "Ram",
  // ];
  //
  // Index:
  //
  // 0 -> Ram
  // 1 -> Hari
  // 2 -> Ram
  //
  // Same value can exist multiple times.


  // ============================================================
  // DAY 4 FINAL SUMMARY
  // ============================================================

  // List<String> names = ["Ram", "Hari", "Rohan"];
  //
  // names[0]
  //     -> access element
  //
  // names[0] = "Sita";
  //     -> update element
  //
  // names.add("Amit");
  //     -> add one
  //
  // names.addAll(["A", "B"]);
  //     -> add multiple
  //
  // names.insert(1, "X");
  //     -> insert at index
  //
  // names.remove("Ram");
  //     -> remove value
  //
  // names.removeAt(0);
  //     -> remove by index
  //
  // names.length
  //     -> number of elements
  //
  // names.contains("Ram")
  //     -> check value
  //
  // names.indexOf("Ram")
  //     -> find index
  //
  // names.sort();
  //     -> sort
  //
  // names.clear();
  //     -> remove all
  //
  // ============================================================
}