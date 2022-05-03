import 'extension.dart';

void main() {
  final str = '123';
  print(str.toIntOrNull());
  print(str.toIntOrNull() is int);
}
