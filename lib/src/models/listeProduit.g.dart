// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listeProduit.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class ListeProduit extends _ListeProduit {
  ListeProduit(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.id_produit,
      this.id_liste});

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
  String id_produit;

  @override
  String id_liste;

  ListeProduit copyWith(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String id_produit,
      String id_liste}) {
    return ListeProduit(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id_produit: id_produit ?? this.id_produit,
        id_liste: id_liste ?? this.id_liste);
  }

  bool operator ==(other) {
    return other is _ListeProduit &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.id_produit == id_produit &&
        other.id_liste == id_liste;
  }

  @override
  int get hashCode {
    return hashObjects([id, createdAt, updatedAt, id_produit, id_liste]);
  }

  @override
  String toString() {
    return "ListeProduit(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, id_produit=$id_produit, id_liste=$id_liste)";
  }

  Map<String, dynamic> toJson() {
    return ListeProduitSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ListeProduitSerializer listeProduitSerializer = ListeProduitSerializer();

class ListeProduitEncoder extends Converter<ListeProduit, Map> {
  const ListeProduitEncoder();

  @override
  Map convert(ListeProduit model) => ListeProduitSerializer.toMap(model);
}

class ListeProduitDecoder extends Converter<Map, ListeProduit> {
  const ListeProduitDecoder();

  @override
  ListeProduit convert(Map map) => ListeProduitSerializer.fromMap(map);
}

class ListeProduitSerializer extends Codec<ListeProduit, Map> {
  const ListeProduitSerializer();

  @override
  get encoder => const ListeProduitEncoder();
  @override
  get decoder => const ListeProduitDecoder();
  static ListeProduit fromMap(Map map) {
    return ListeProduit(
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
        id_produit: map['id_produit'] as String,
        id_liste: map['id_liste'] as String);
  }

  static Map<String, dynamic> toMap(_ListeProduit model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'id_produit': model.id_produit,
      'id_liste': model.id_liste
    };
  }
}

abstract class ListeProduitFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    id_produit,
    id_liste
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String id_produit = 'id_produit';

  static const String id_liste = 'id_liste';
}
