Stream<String> fizzBuzz() async* {
  for (var i = 1; i <= 15; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    if (i % 3 == 0 && i % 5 == 0) {
      yield 'FizzBuzz';
    } else if (i % 3 == 0) {
      yield 'Fizz';
    } else if (i % 5 == 0) {
      yield 'Buzz';
    } else {
      yield '$i';
    }
  }
}

Future<void> main() async {
  final stream = fizzBuzz();
  await for (var value in stream) {
    print(value);
  }
}
