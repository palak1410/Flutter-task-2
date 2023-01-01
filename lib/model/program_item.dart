import 'dart:convert';

class ProgramItem {
  final String createdAt;
  final String name;
  final String category;
  final int lesson;
  final String id;
  ProgramItem({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
    required this.id,
  });

  ProgramItem copyWith({
    String? createdAt,
    String? name,
    String? category,
    int? lesson,
    String? id,
  }) {
    return ProgramItem(
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      category: category ?? this.category,
      lesson: lesson ?? this.lesson,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'name': name,
      'category': category,
      'lesson': lesson,
      'id': id,
    };
  }

  factory ProgramItem.fromMap(Map<String, dynamic> map) {
    return ProgramItem(
      createdAt: map['createdAt'] as String,
      name: map['name'] as String,
      category: map['category'] as String,
      lesson: map['lesson'].toInt() as int,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProgramItem.fromJson(String source) =>
      ProgramItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProgramItem(createdAt: $createdAt, name: $name, category: $category, lesson: $lesson, id: $id)';
  }

  @override
  bool operator ==(covariant ProgramItem other) {
    if (identical(this, other)) return true;

    return other.createdAt == createdAt &&
        other.name == name &&
        other.category == category &&
        other.lesson == lesson &&
        other.id == id;
  }

  @override
  int get hashCode {
    return createdAt.hashCode ^
        name.hashCode ^
        category.hashCode ^
        lesson.hashCode ^
        id.hashCode;
  }
}
