import 'dart:math';

abstract class Shape {
  double get area;
  const Shape();

// factory コンストラクタからsubクラスが呼べる
// staticメソッドにしても便利だけど、クラスのインスタンス化は、慣習としてコンストラクタを利用する
  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'Circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('invalid or missing radius property');
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('invalid or missing radius property');

      default:
        throw Exception('shape $type not recognized');
    }
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}
