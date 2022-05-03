class Point {
  const Point(this.x, this.y);
  final int x, y;

  @override
  String toString() => 'Point($x, $y)';

  @override
  bool operator ==(covariant Point other) => x == other.x && y == other.y;

  Point operator +(covariant Point other) => Point(x + other.x, other.y + y);

  Point operator *(covariant int n) => Point(x * n, y * n);
}

void main() {
  print(Point(1, 1) + Point(2, 0)); // Point(3, 0)
  print(Point(2, 1) * 5); // Point(10, 5)
}
