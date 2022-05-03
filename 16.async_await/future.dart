Future<String> fetchUser() => Future.delayed(
      Duration(seconds: 2),
      // () => 'User',
      () => throw Exception('Error fetching user'),
    );

void main() {
  print("start");
  fetchUser()
      .then((item) => print(item))
      .catchError((e) => print(e))
      .whenComplete(() => print('done'));
}
