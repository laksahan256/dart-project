import 'dart:math';

void main() {
  List<Shape> shapes = [Square(10), Circle(10)];
  shapes.forEach((shape) {
    shape.printValues();
   });
}
abstract class Shape {
  double get perimeter;
  double get area;
  void printValues() {
    print('Area is $area , Perimeter is $perimeter');
  }
}
class Square extends Shape {
  final double side;
  Square(this.side);
  @override
  double get perimeter => 4 * side;
  @override
  double get area => side * side;
}
class Circle extends Shape {
  final double radius;
  Circle(this.radius);
  @override
  double get perimeter => 2 * pi * radius;
  @override
  double get area => radius * radius * pi;
}