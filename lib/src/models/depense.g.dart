// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depense.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Depense extends _Depense {
  Depense(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.fullName,
      this.factureCode,
      this.designation,
      this.montantTVA,
      this.mttotal});

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
  String fullName;

  @override
  String factureCode;

  @override
  String designation;

  @override
  String montantTVA;

  @override
  String mttotal;

  Depense copyWith(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String fullName,
      String factureCode,
      String designation,
      String montantTVA,
      String mttotal}) {
    return Depense(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        fullName: fullName ?? this.fullName,
        factureCode: factureCode ?? this.factureCode,
        designation: designation ?? this.designation,
        montantTVA: montantTVA ?? this.montantTVA,
        mttotal: mttotal ?? this.mttotal);
  }

  bool operator ==(other) {
    return other is _Depense &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.fullName == fullName &&
        other.factureCode == factureCode &&
        other.designation == designation &&
        other.montantTVA == montantTVA &&
        other.mttotal == mttotal;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      fullName,
      factureCode,
      designation,
      montantTVA,
      mttotal
    ]);
  }

  @override
  String toString() {
    return "Depense(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, fullName=$fullName, factureCode=$factureCode, designation=$designation, montantTVA=$montantTVA, mttotal=$mttotal)";
  }

  Map<String, dynamic> toJson() {
    return DepenseSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const DepenseSerializer depenseSerializer = DepenseSerializer();

class DepenseEncoder extends Converter<Depense, Map> {
  const DepenseEncoder();

  @override
  Map convert(Depense model) => DepenseSerializer.toMap(model);
}

class DepenseDecoder extends Converter<Map, Depense> {
  const DepenseDecoder();

  @override
  Depense convert(Map map) => DepenseSerializer.fromMap(map);
}

class DepenseSerializer extends Codec<Depense, Map> {
  const DepenseSerializer();

  @override
  get encoder => const DepenseEncoder();
  @override
  get decoder => const DepenseDecoder();
  static Depense fromMap(Map map) {
    return Depense(
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
        fullName: map['fullName'] as String,
        factureCode: map['factureCode'] as String,
        designation: map['designation'] as String,
        montantTVA: map['montantTVA'] as String,
        mttotal: map['mttotal'] as String);
  }

  static Map<String, dynamic> toMap(_Depense model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'fullName': model.fullName,
      'factureCode': model.factureCode,
      'designation': model.designation,
      'montantTVA': model.montantTVA,
      'mttotal': model.mttotal
    };
  }
}

abstract class DepenseFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    fullName,
    factureCode,
    designation,
    montantTVA,
    mttotal
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String fullName = 'fullName';

  static const String factureCode = 'factureCode';

  static const String designation = 'designation';

  static const String montantTVA = 'montantTVA';

  static const String mttotal = 'mttotal';
}
