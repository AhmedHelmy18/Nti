import 'dart:io';

void main() {
  print("Enter Number 1: ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter Number 2: ");
  int num2 = int.parse(stdin.readLineSync()!);

  List<String> operations = ['+', '-', '*', '/'];
  operations.forEach((e) => function(num1: num1, num2: num2, operation: e));
}

void function({
  required int num1,
  required int num2,
  required String operation,
}) {
  switch (operation) {
    case '+':
      print("Sum = ${num1 + num2}");
      break;
    case '-':
      print("Difference = ${num1 - num2}");
      break;
    case '*':
      print("Product = ${num1 * num2}");
      break;
    case '/':
      print("Quotient = ${num1 / num2}");
      break;
    default:
      print("Invalid Operation");
      break;
  }
}
