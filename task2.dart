void main() {
  //dynamic and var
  var name = "Ahmed";

  dynamic age = 21;

  print("My name is $name and my age is $age years old");

  // name = 21;

  age = "Twenty one";

  print(
    "the var cannot be changed the value to another type but the dynamic can be changed\n",
  );

  // final and const
  final name1 = "Ahmed";
  const age1 = 21;

  print("My name is $name1 and my age is $age1 years old");

  // name1 = "Helmy";

  // age1 = 22;
  print(
    "the final can assign a value once but the const cannot be assigned a value or change it",
  );
}
