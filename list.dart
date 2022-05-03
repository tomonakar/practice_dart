void main() {
  final cities = ['London', 'Paris', 'Berlin'];
  cities.add('japan');
  print(cities);

  var values = [1, 3, 5, 6, 19, 2];
  var sum = 0;

  for (var value in values) {
    sum += value;
  }
  print(sum);
  print(values.length);
  print(values.first);
  print(values.last);
  print([].isEmpty);
  print([].isNotEmpty);
  print(values.contains(2));
  print(values.hashCode);

  const a = {1, 3};
  const b = {3, 5};
  final c = a.union(b).difference(a.intersection(b));
  print(c);
}
