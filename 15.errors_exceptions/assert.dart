class PositiveInt {
  const PositiveInt(this.value) : assert(value >= 0, 'value must be positive');
  final int value;
}

void SignIn(String email, String password) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

void main() {
  final invalidInt = PositiveInt(-3);
  print(invalidInt);

  SignIn('', '');

  // const list = [1, 2, 3];
  // print(list[4]);
}
