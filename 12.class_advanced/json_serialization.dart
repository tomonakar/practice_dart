class Person {
  Person({required this.name, required this.age});
  final String name;
  final int age;

  factory Person.fromJson(Map<String, Object> json) {
    if (json['name'] is String && json['age'] is int) {
      return Person(name: json['name'] as String, age: json['age'] as int);
    }
    throw StateError('Could not read name or age');
  }

  Map<String, Object> toJson() => {'name': name, 'age': age};
}

void main() {
  final person = Person.fromJson({
    'name': 'Dart',
    'age': 20,
  });
  final json = person.toJson();
  print(json);
}
