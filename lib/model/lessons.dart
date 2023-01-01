import 'dart:convert';

import 'package:collection/collection.dart';

import 'lesson_items.dart';

class Lesson {
  final String requestId;
  final List<Lessonitem> lessonitem;
  final int count;
  final String anyKey;
  Lesson({
    required this.requestId,
    required this.lessonitem,
    required this.count,
    required this.anyKey,
  });

  Lesson copyWith({
    String? requestId,
    List<Lessonitem>? lessonitem,
    int? count,
    String? anyKey,
  }) {
    return Lesson(
      requestId: requestId ?? this.requestId,
      lessonitem: lessonitem ?? this.lessonitem,
      count: count ?? this.count,
      anyKey: anyKey ?? this.anyKey,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestId': requestId,
      'lessonitem': lessonitem.map((x) => x.toMap()).toList(),
      'count': count,
      'anyKey': anyKey,
    };
  }

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      requestId: map['requestId'] as String,
      lessonitem: List<Lessonitem>.from(
        (map['items'] as List<dynamic>).map<Lessonitem>(
          (x) => Lessonitem.fromMap(x as Map<String, dynamic>),
        ),
      ),
      count: map['count'].toInt() as int,
      anyKey: map['anyKey'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Lesson.fromJson(String source) =>
      Lesson.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Lesson(requestId: $requestId, lessonitem: $lessonitem, count: $count, anyKey: $anyKey)';
  }

  @override
  bool operator ==(covariant Lesson other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.requestId == requestId &&
        listEquals(other.lessonitem, lessonitem) &&
        other.count == count &&
        other.anyKey == anyKey;
  }

  @override
  int get hashCode {
    return requestId.hashCode ^
        lessonitem.hashCode ^
        count.hashCode ^
        anyKey.hashCode;
  }
}
