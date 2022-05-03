import 'package:equatable/equatable.dart';

class Point extends Equatable {
  const Point(this.x, this.y);

  final int x, y;

  @override
  List<Object?> get props => [x, y];

  @override
  bool get stringify => true;

  // @override
  // String toString() => 'Point($x, $y)';

  // @override
  // bool operator ==(covariant Point other) => x == other.x && y == other.y;

  Point operator +(covariant Point other) => Point(x + other.x, y + other.y);

  Point operator *(covariant Point other) => Point(x * other.x, y * other.y);

  int get hashCode => Object.hash(x, y);
}

void main() {
  print(Point(0, 0) == Point(0, 0));
  print(Point(0, 0));
  print(Point(1, 1).hashCode == Point(1, 1).hashCode);
}
