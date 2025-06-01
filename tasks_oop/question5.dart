import 'dart:math';

void main() {
  Point point1 = Point(10, 20);

  print(
    "المسافه من نقطه الاصل و النقطه هى: ${sqrt(point1.x * point1.x + point1.y * point1.y)}",
  );
}

class Point {
  late int x;
  late int y;

  Point(this.x, this.y);
}
