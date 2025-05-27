void main(){
  List<int> numbers = [];

  numbers.add(1);
  numbers.add(100);
  numbers.add(88);
  numbers.add(50);
  numbers.add(8);

  numbers.removeAt(0);

  numbers.removeLast();

  print(numbers);
}