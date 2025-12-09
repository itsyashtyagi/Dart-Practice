import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() {
    print("Area : $area");
    print("Perimeter : $perimeter");
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  Circle c1 = Circle(5);
  c1.printValues();

  Square s1 = Square(5);
  s1.printValues();
}
