import 'dart:async';

Future<String> fetchUser() => Future.delayed(
      Duration(seconds: 1),
      () => 'dart',
    );

Future<String> fetchUser2() => Future.value('Go');

Future<String> fetchUser3() => Future.error('Error');

void main() async {
  print('start');
  try {
    final user = await fetchUser();
    print(user);

    final user2 = await fetchUser();
    print(user2);

    final user3 = await fetchUser2();
    print(user3);

    final user4 = await fetchUser3();
    print(user4);
  } catch (e) {
    print(e);
  } finally {
    print('end');
  }
}
