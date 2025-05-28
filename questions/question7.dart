void main() {
  List data = [
    'Ahmed',
    'Ali',
    'Sayed',
    1,
    2,
    3,
    ['Helmy', 4],
  ];

  data.add('Laptop');

  data.remove('Ali');

  data[5][1] = 8;

  data.add([30, 15, 20]);

  data[7].sort();
  print(data);
}
