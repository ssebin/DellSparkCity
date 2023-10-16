class Dog {
  final int? id; // Use int? for auto-generated IDs
  final String name;
  final int age;

  Dog({this.id, required this.name, required this.age});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Dog.fromMap(Map<String, dynamic> map) {
    return Dog(
      id: map['id'],
      name: map['name'],
      age: map['age'],
    );
  }
}
