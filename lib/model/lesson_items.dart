import 'dart:convert';

class Lessonitem {
  final String createdAt;
  final String name;
  final int duration;
  final String category;
  final bool locked;
  final String id;
  Lessonitem({
    required this.createdAt,
    required this.name,
    required this.duration,
    required this.category,
    required this.locked,
    required this.id,
  });

  Lessonitem copyWith({
    String? createdAt,
    String? name,
    int? duration,
    String? category,
    bool? locked,
    String? id,
  }) {
    return Lessonitem(
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      duration: duration ?? this.duration,
      category: category ?? this.category,
      locked: locked ?? this.locked,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'name': name,
      'duration': duration,
      'category': category,
      'locked': locked,
      'id': id,
    };
  }

  factory Lessonitem.fromMap(Map<String, dynamic> map) {
    return Lessonitem(
      createdAt: map['createdAt'] as String,
      name: map['name'] as String,
      duration: map['duration'].toInt() as int,
      category: map['category'] as String,
      locked: map['locked'] as bool,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Lessonitem.fromJson(String source) =>
      Lessonitem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LessonItem(createdAt: $createdAt, name: $name, duration: $duration, category: $category, locked: $locked, id: $id)';
  }

  @override
  bool operator ==(covariant Lessonitem other) {
    if (identical(this, other)) return true;

    return other.createdAt == createdAt &&
        other.name == name &&
        other.duration == duration &&
        other.category == category &&
        other.locked == locked &&
        other.id == id;
  }

  @override
  int get hashCode {
    return createdAt.hashCode ^
        name.hashCode ^
        duration.hashCode ^
        category.hashCode ^
        locked.hashCode ^
        id.hashCode;
  }
}
