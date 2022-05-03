Future<int> sumStream(Stream<int> steam) async {
  var sum = 0;
  await for (var value in steam) {
    sum += value;
  }
  return sum;
}

Future<int> sumStream2(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(
      Duration(seconds: 1),
      () => print('$i'),
    );
    // )
    yield i;
  }
}

Iterable<int> count(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  final int = await sumStream(stream);
  print('Sum: $int');

  final stream2 = countStream(4);
  final int2 = await sumStream2(stream2);
  print(int2);
}
