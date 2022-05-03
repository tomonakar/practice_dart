extension IterableX<T extends num> on Iterable<T> {
  T sum() => this.reduce((value, element) => value + element as T);
}

void main() {
  final intList = [1, 2, 3, 4, 5, 6];
  int sum1 = intList.sum();

  final doubleList = [1.1, 2.2, 3.3, 4.4];
  double sum2 = doubleList.sum();

  print(sum1);
  print(sum2);
}
