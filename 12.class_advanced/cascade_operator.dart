import 'dart:math';

class ClosedPath {
  List<Point> _points = [];

  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point pint) {
    _points.add(pint);
  }
}

void main() {
  final path = ClosedPath();
  path.moveTo(Point(0, 0));
  path.lineTo(Point(2, 0));
  path.lineTo(Point(2, 2));
  path.lineTo(Point(0, 2));
  path.lineTo(Point(0, 0));

// cascade operator
  final path2 = ClosedPath()
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2))
    ..lineTo(Point(0, 0));
}
