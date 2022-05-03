class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email, password;

  @override
  String toString() => 'Credentials(email: $email, password: $password)';

  Credentials copyWith({
    String? email,
    String? password,
  }) {
    return Credentials(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

void main() {
  const credentials = Credentials();
  final updated1 = credentials.copyWith(email: 'tomo@gmail.com');
  print(updated1);
  final updated2 = updated1.copyWith(password: '123456');
  print(updated2);
}
