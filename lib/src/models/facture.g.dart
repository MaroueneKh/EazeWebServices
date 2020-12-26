// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facture.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Facture extends _Facture {
  Facture(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.id_client,
      this.tva,
      this.remise,
      this.montantfinal,
      List<String> produits})
      : this.produits = List.unmodifiable(produits ?? []);

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
  String id_client;

  @override
  String tva;

  @override
  String remise;

  @override
  String montantfinal;

  @override
  List<String> produits;

  Facture copyWith(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String id_client,
      String tva,
      String remise,
      String montantfinal,
      List<String> produits}) {
    return Facture(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id_client: id_client ?? this.id_client,
        tva: tva ?? this.tva,
        remise: remise ?? this.remise,
        montantfinal: montantfinal ?? this.montantfinal,
        produits: produits ?? this.produits);
  }

  bool operator ==(other) {
    return other is _Facture &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.id_client == id_client &&
        other.tva == tva &&
        other.remise == remise &&
        other.montantfinal == montantfinal &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.produits, produits);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      id_client,
      tva,
      remise,
      montantfinal,
      produits
    ]);
  }

  @override
  String toString() {
    return "Facture(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, id_client=$id_client, tva=$tva, remise=$remise, montantfinal=$montantfinal, produits=$produits)";
  }

  Map<String, dynamic> toJson() {
    return FactureSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const FactureSerializer factureSerializer = FactureSerializer();

class FactureEncoder extends Converter<Facture, Map> {
  const FactureEncoder();

  @override
  Map convert(Facture model) => FactureSerializer.toMap(model);
}

class FactureDecoder extends Converter<Map, Facture> {
  const FactureDecoder();

  @override
  Facture convert(Map map) => FactureSerializer.fromMap(map);
}

class FactureSerializer extends Codec<Facture, Map> {
  const FactureSerializer();

  @override
  get encoder => const FactureEncoder();
  @override
  get decoder => const FactureDecoder();
  static Facture fromMap(Map map) {
    return Facture(
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
        id_client: map['id_client'] as String,
        tva: map['tva'] as String,
        remise: map['remise'] as String,
        montantfinal: map['montantfinal'] as String,
        produits: map['produits'] is Iterable
            ? (map['produits'] as Iterable).cast<String>().toList()
            : null);
  }

  static Map<String, dynamic> toMap(_Facture model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'id_client': model.id_client,
      'tva': model.tva,
      'remise': model.remise,
      'montantfinal': model.montantfinal,
      'produits': model.produits
    };
  }
}

abstract class FactureFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    id_client,
    tva,
    remise,
    montantfinal,
    produits
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String id_client = 'id_client';

  static const String tva = 'tva';

  static const String remise = 'remise';

  static const String montantfinal = 'montantfinal';

  static const String produits = 'produits';
}
