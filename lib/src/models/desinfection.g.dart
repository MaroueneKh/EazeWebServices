// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desinfection.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Desinfection extends _Desinfection {
  Desinfection({this.id, this.createdAt, this.updatedAt, this.completion});

  /// A unique identifier corresponding to this item.
  @override
  String id;

  /// The time at which this item was created.
  @override
  DateTime createdAt;

  /// The last time at which this item was updated.
  @override
  DateTime updatedAt;

  @override
  String completion;

  Desinfection copyWith(
      {String id, DateTime createdAt, DateTime updatedAt, String completion}) {
    return Desinfection(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        completion: completion ?? this.completion);
  }

  bool operator ==(other) {
    return other is _Desinfection &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.completion == completion;
  }

  @override
  int get hashCode {
    return hashObjects([id, createdAt, updatedAt, completion]);
  }

  @override
  String toString() {
    return "Desinfection(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, completion=$completion)";
  }

  Map<String, dynamic> toJson() {
    return DesinfectionSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const DesinfectionSerializer desinfectionSerializer = DesinfectionSerializer();

class DesinfectionEncoder extends Converter<Desinfection, Map> {
  const DesinfectionEncoder();

  @override
  Map convert(Desinfection model) => DesinfectionSerializer.toMap(model);
}

class DesinfectionDecoder extends Converter<Map, Desinfection> {
  const DesinfectionDecoder();

  @override
  Desinfection convert(Map map) => DesinfectionSerializer.fromMap(map);
}

class DesinfectionSerializer extends Codec<Desinfection, Map> {
  const DesinfectionSerializer();

  @override
  get encoder => const DesinfectionEncoder();
  @override
  get decoder => const DesinfectionDecoder();
  static Desinfection fromMap(Map map) {
    return Desinfection(
        id: map['id'] as String,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        updatedAt: map['updated_at'] != null
            ? (map['updated_at'] is DateTime
                ? (map['updated_at'] as DateTime)
                : DateTime.parse(map['updated_at'].toString()))
            : null,
        completion: map['completion'] as String);
  }

  static Map<String, dynamic> toMap(_Desinfection model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'completion': model.completion
    };
  }
}

abstract class DesinfectionFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    completion
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String completion = 'completion';
}
