Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  // Stream.value(10);
  // Stream.error(Exception('Error'));
  // Stream.empty();
  // Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));
  // Stream.periodic(Duration(seconds: 1), (index) => index);

  // await stream.forEach((value) => print(value));
  final doubles = stream.map((value) => value * 2).where((value) => value > 3);
  // print(doubles);  // Instance of '_WhereStream<int>'

  await doubles.forEach(print);
}
