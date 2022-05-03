Future<void> countdown(int n) async {
  for (int i = n; i > 0; i--) {
    await Future.delayed(
      Duration(seconds: 1),
      () => print('$i'),
    );
  }
}

Future<void> main() async {
  try {
    await countdown(5);
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }
}
