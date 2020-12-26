// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liste.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Liste extends _Liste {
  Liste(
      {this.id,
      this.createdAt,
      this.updatedAt,
      List<String> products,
      this.nom,
      this.id_client})
      : this.products = List.unmodifiable(products ?? []);

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
  List<String> products;

  @override
  String nom;

  @override
  String id_client;

  Liste copyWith(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      List<String> products,
      String nom,
      String id_client}) {
    return Liste(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        products: products ?? this.products,
        nom: nom ?? this.nom,
        id_client: id_client ?? this.id_client);
  }

  bool operator ==(other) {
    return other is _Liste &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.products, products) &&
        other.nom == nom &&
        other.id_client == id_client;
  }

  @override
  int get hashCode {
    return hashObjects([id, createdAt, updatedAt, products, nom, id_client]);
  }

  @override
  String toString() {
    return "Liste(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, products=$products, nom=$nom, id_client=$id_client)";
  }

  Map<String, dynamic> toJson() {
    return ListeSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ListeSerializer listeSerializer = ListeSerializer();

class ListeEncoder extends Converter<Liste, Map> {
  const ListeEncoder();

  @override
  Map convert(Liste model) => ListeSerializer.toMap(model);
}

class ListeDecoder extends Converter<Map, Liste> {
  const ListeDecoder();

  @override
  Liste convert(Map map) => ListeSerializer.fromMap(map);
}

class ListeSerializer extends Codec<Liste, Map> {
  const ListeSerializer();

  @override
  get encoder => const ListeEncoder();
  @override
  get decoder => const ListeDecoder();
  static Liste fromMap(Map map) {
    return Liste(
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
        products: map['products'] is Iterable
            ? (map['products'] as Iterable).cast<String>().toList()
            : null,
        nom: map['nom'] as String,
        id_client: map['id_client'] as String);
  }

  static Map<String, dynamic> toMap(_Liste model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'products': model.products,
      'nom': model.nom,
      'id_client': model.id_client
    };
  }
}

abstract class ListeFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    products,
    nom,
    id_client
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String products = 'products';

  static const String nom = 'nom';

  static const String id_client = 'id_client';
}
