class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw UnsupportedError('Denominator cannot be 0');
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void testFunction() {
  try {
    final f = Fraction(1, 0);
    print(f.value);
  } on UnsupportedError catch (e) {
    print(e);
    rethrow;
  } on Exception catch (e) {
    print(e);
  } finally {
    print('Finally');
  }
}

void main() {
  // final f = Fraction(1, 0);
  // print(f.value);
  testFunction();
}
