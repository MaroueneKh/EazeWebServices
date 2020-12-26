// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vente.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Vente extends _Vente {
  Vente(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.ticket,
      this.date,
      this.client,
      this.frais,
      this.total,
      this.magasin,
      this.trc});

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
  String ticket;

  @override
  String date;

  @override
  String client;

  @override
  String frais;

  @override
  String total;

  @override
  String magasin;

  @override
  String trc;

  Vente copyWith(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String ticket,
      String date,
      String client,
      String frais,
      String total,
      String magasin,
      String trc}) {
    return Vente(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        ticket: ticket ?? this.ticket,
        date: date ?? this.date,
        client: client ?? this.client,
        frais: frais ?? this.frais,
        total: total ?? this.total,
        magasin: magasin ?? this.magasin,
        trc: trc ?? this.trc);
  }

  bool operator ==(other) {
    return other is _Vente &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.ticket == ticket &&
        other.date == date &&
        other.client == client &&
        other.frais == frais &&
        other.total == total &&
        other.magasin == magasin &&
        other.trc == trc;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      ticket,
      date,
      client,
      frais,
      total,
      magasin,
      trc
    ]);
  }

  @override
  String toString() {
    return "Vente(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, ticket=$ticket, date=$date, client=$client, frais=$frais, total=$total, magasin=$magasin, trc=$trc)";
  }

  Map<String, dynamic> toJson() {
    return VenteSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const VenteSerializer venteSerializer = VenteSerializer();

class VenteEncoder extends Converter<Vente, Map> {
  const VenteEncoder();

  @override
  Map convert(Vente model) => VenteSerializer.toMap(model);
}

class VenteDecoder extends Converter<Map, Vente> {
  const VenteDecoder();

  @override
  Vente convert(Map map) => VenteSerializer.fromMap(map);
}

class VenteSerializer extends Codec<Vente, Map> {
  const VenteSerializer();

  @override
  get encoder => const VenteEncoder();
  @override
  get decoder => const VenteDecoder();
  static Vente fromMap(Map map) {
    return Vente(
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
        ticket: map['ticket'] as String,
        date: map['date'] as String,
        client: map['client'] as String,
        frais: map['frais'] as String,
        total: map['total'] as String,
        magasin: map['magasin'] as String,
        trc: map['trc'] as String);
  }

  static Map<String, dynamic> toMap(_Vente model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'ticket': model.ticket,
      'date': model.date,
      'client': model.client,
      'frais': model.frais,
      'total': model.total,
      'magasin': model.magasin,
      'trc': model.trc
    };
  }
}

abstract class VenteFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    ticket,
    date,
    client,
    frais,
    total,
    magasin,
    trc
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String ticket = 'ticket';

  static const String date = 'date';

  static const String client = 'client';

  static const String frais = 'frais';

  static const String total = 'total';

  static const String magasin = 'magasin';

  static const String trc = 'trc';
}
