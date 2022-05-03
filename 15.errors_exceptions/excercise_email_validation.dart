class EmailAddress {
  EmailAddress(this.email) {
    assert(email.isNotEmpty);
    assert(email.contains('@'));
    if (email.isEmpty) {
      throw FormatException('email must not be empty');
    }

    if (!email.contains('@')) {
      throw FormatException('email must contain @');
    }
  }
  final String email;
}

void main() {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('meexample.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}
