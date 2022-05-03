// mixin による不利益
// - コンストラクターがない
// - 名前の衝突をコンパイラで検出できない

mixin MinxIn1 {
  int foo = 1;
}
mixin MinxIn2 {
  int foo = 2;
}

class Foo with MinxIn1, MinxIn2 {
  void printFoo() => print(foo);
}

void main() {
  final foo = Foo();
  foo.printFoo();
}
