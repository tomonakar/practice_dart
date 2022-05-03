void main() {
  final temp1 = Temperature.celsius(30.0);
  final temp2 = Temperature.fahrenheit(212.0);
  print(temp1.celsius);
  print(temp2.celsius);

  temp1.celsius = 32;
  print('celsius: ${temp1.celsius}');
  print('fahrenheit: ${temp1.fahrenheit}');
  temp1.fahrenheit = 100;
  print('celsius: ${temp1.celsius}');
  print('fahrenheit: ${temp1.fahrenheit}');
}

// 華氏・摂氏を扱うクラス
class Temperature {
  // 華氏を指定するnamed constructor
  Temperature.celsius(this.celsius);

  // 摂氏を指定するnamed constructor
  Temperature.fahrenheit(double fahrenheit)
      : celsius = (fahrenheit - 32) * 5 / 9;
  // メンバ変数は華氏のみ
  // member variable is stored. (in memory)
  double celsius;

  // 摂氏をgetterで取得
  // getter is computed ( is not in memory)
  double get fahrenheit => (celsius * 9 / 5) + 32;

  // 摂氏をsetterで指定する
  set fahrenheit(double fahrenheit) => celsius = (fahrenheit - 32) * 5 / 9;
}
