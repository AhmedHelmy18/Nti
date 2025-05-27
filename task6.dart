void main() {
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];

  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  print(
    "---------------------------------------------------------------------",
  );
  numbers.forEach((element) {
    print("القيمه الحاليه هي $element");
  });
}
