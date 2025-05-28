void main() {
  Map employees = {"Ali": 3000, "Sara": 4000, "Ahmed": 3500, "Laila": 4500};

  employees.forEach((key, value) {
    print("the salary of $key is $value");
  });

  print('-----------------------------------------');

  Set newEmployees = {"Ali", "Sara", "Ahmed", "Laila", "Ahmed"};

  newEmployees.forEach((element) {
    print(element);
  });
}
