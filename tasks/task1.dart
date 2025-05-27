import 'dart:io';

void main() {
  stdout.write("Please enter the name of product: ");
  String name = stdin.readLineSync()!;

  stdout.write("Please enter the price of product: ");
  double price = double.parse(stdin.readLineSync()!);

  stdout.write("Please enter the quantity of product: ");
  int quantity = int.parse(stdin.readLineSync()!);

  stdout.write("Is there any product in stock? (true/false): ");
  bool stock = bool.parse(stdin.readLineSync()!);

  stdout.write("The year of product made: ");
  String year = stdin.readLineSync()!;

  print(
    "The name of product is $name and the price of the product is $price and there is $quantity of pieces of product and the product is in stock $stock and the product is made in $year",
  );
}
