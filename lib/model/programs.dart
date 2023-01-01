import 'dart:convert';

import 'package:collection/collection.dart';

import 'program_item.dart';

class Program {
  final String requestId;
  final List<ProgramItem> items;
  final int count;
  final String anyKey;
  Program({
    required this.requestId,
    required this.items,
    required this.count,
    required this.anyKey,
  });

  Program copyWith({
    String? requestId,
    List<ProgramItem>? items,
    int? count,
    String? anyKey,
  }) {
    return Program(
      requestId: requestId ?? this.requestId,
      items: items ?? this.items,
      count: count ?? this.count,
      anyKey: anyKey ?? this.anyKey,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestId': requestId,
      'items': items.map((x) => x.toMap()).toList(),
      'count': count,
      'anyKey': anyKey,
    };
  }

  factory Program.fromMap(Map<String, dynamic> map) {
    return Program(
      requestId: map['requestId'] as String,
      items: List<ProgramItem>.from(
        (map['items'] as List<dynamic>).map<ProgramItem>(
          (x) => ProgramItem.fromMap(x as Map<String, dynamic>),
        ),
      ),
      count: map['count'].toInt() as int,
      anyKey: map['anyKey'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Program.fromJson(String source) =>
      Program.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Program(requestId: $requestId, items: $items, count: $count, anyKey: $anyKey)';
  }

  @override
  bool operator ==(covariant Program other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.requestId == requestId &&
        listEquals(other.items, items) &&
        other.count == count &&
        other.anyKey == anyKey;
  }

  @override
  int get hashCode {
    return requestId.hashCode ^
        items.hashCode ^
        count.hashCode ^
        anyKey.hashCode;
  }
}
