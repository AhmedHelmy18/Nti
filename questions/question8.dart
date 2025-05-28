void main() {
  Map employees = {"Ali": 3000, "Sara": 4000, "Ahmed": 3500, "Laila": 4500};
  employees["Khaled"] = 5000;

  if (employees.containsKey("Ali")) {
    print("the salary of Ali is ${employees["Ali"]}.\n");
  }
  employees.remove("Ahmed");

  employees.forEach((key, value) {
    print("the salary of $key is $value.");
  });

  print('-----------------------------------------');
  Map newEmployees = {"Ali": 3000, "Sara": 4000, "Ahmed": 3500, "Laila": 4500};
  newEmployees.forEach((key, value) {
    print("the salary of $key is ${value + (value * 10 / 100)}.");
  });
}
