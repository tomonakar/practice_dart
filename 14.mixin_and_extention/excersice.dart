extension Range on int {
  List<int> rangeTo(int n) {
    var list = [this];

    if (this > n) {
      return list;
    }

    for (var i = this; i < n; i++) {
      list.add(i);
    }
    return list;
  }
}

void main() {
  final a = 1.rangeTo(5);
  print(a);

  for (var i in 1.rangeTo(5)) {
    print(i);
  }
}
