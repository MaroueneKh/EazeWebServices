// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produit.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Produit extends _Produit {
  Produit(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.nom,
      this.category,
      this.image,
      this.description,
      this.price,
      this.quantity,
      this.CodeaBarres,
      this.rating,
      this.x,
      this.y,
      List<String> recommandes,
      List<String> listes})
      : this.recommandes = List.unmodifiable(recommandes ?? []),
        this.listes = List.unmodifiable(listes ?? []);

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
  String nom;

  @override
  String category;

  @override
  String image;

  @override
  String description;

  @override
  String price;

  @override
  String quantity;

  @override
  String CodeaBarres;

  @override
  String rating;

  @override
  String x;

  @override
  String y;

  @override
  List<String> recommandes;

  @override
  List<String> listes;

  Produit copyWith(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String nom,
      String category,
      String image,
      String description,
      String price,
      String quantity,
      String CodeaBarres,
      String rating,
      String x,
      String y,
      List<String> recommandes,
      List<String> listes}) {
    return Produit(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        nom: nom ?? this.nom,
        category: category ?? this.category,
        image: image ?? this.image,
        description: description ?? this.description,
        price: price ?? this.price,
        quantity: quantity ?? this.quantity,
        CodeaBarres: CodeaBarres ?? this.CodeaBarres,
        rating: rating ?? this.rating,
        x: x ?? this.x,
        y: y ?? this.y,
        recommandes: recommandes ?? this.recommandes,
        listes: listes ?? this.listes);
  }

  bool operator ==(other) {
    return other is _Produit &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.nom == nom &&
        other.category == category &&
        other.image == image &&
        other.description == description &&
        other.price == price &&
        other.quantity == quantity &&
        other.CodeaBarres == CodeaBarres &&
        other.rating == rating &&
        other.x == x &&
        other.y == y &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.recommandes, recommandes) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.listes, listes);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      nom,
      category,
      image,
      description,
      price,
      quantity,
      CodeaBarres,
      rating,
      x,
      y,
      recommandes,
      listes
    ]);
  }

  @override
  String toString() {
    return "Produit(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, nom=$nom, category=$category, image=$image, description=$description, price=$price, quantity=$quantity, CodeaBarres=$CodeaBarres, rating=$rating, x=$x, y=$y, recommandes=$recommandes, listes=$listes)";
  }

  Map<String, dynamic> toJson() {
    return ProduitSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ProduitSerializer produitSerializer = ProduitSerializer();

class ProduitEncoder extends Converter<Produit, Map> {
  const ProduitEncoder();

  @override
  Map convert(Produit model) => ProduitSerializer.toMap(model);
}

class ProduitDecoder extends Converter<Map, Produit> {
  const ProduitDecoder();

  @override
  Produit convert(Map map) => ProduitSerializer.fromMap(map);
}

class ProduitSerializer extends Codec<Produit, Map> {
  const ProduitSerializer();

  @override
  get encoder => const ProduitEncoder();
  @override
  get decoder => const ProduitDecoder();
  static Produit fromMap(Map map) {
    return Produit(
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
        nom: map['nom'] as String,
        category: map['category'] as String,
        image: map['image'] as String,
        description: map['description'] as String,
        price: map['price'] as String,
        quantity: map['quantity'] as String,
        CodeaBarres: map['codea_barres'] as String,
        rating: map['rating'] as String,
        x: map['x'] as String,
        y: map['y'] as String,
        recommandes: map['recommandes'] is Iterable
            ? (map['recommandes'] as Iterable).cast<String>().toList()
            : null,
        listes: map['listes'] is Iterable
            ? (map['listes'] as Iterable).cast<String>().toList()
            : null);
  }

  static Map<String, dynamic> toMap(_Produit model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'nom': model.nom,
      'category': model.category,
      'image': model.image,
      'description': model.description,
      'price': model.price,
      'quantity': model.quantity,
      'codea_barres': model.CodeaBarres,
      'rating': model.rating,
      'x': model.x,
      'y': model.y,
      'recommandes': model.recommandes,
      'listes': model.listes
    };
  }
}

abstract class ProduitFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    nom,
    category,
    image,
    description,
    price,
    quantity,
    CodeaBarres,
    rating,
    x,
    y,
    recommandes,
    listes
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String nom = 'nom';

  static const String category = 'category';

  static const String image = 'image';

  static const String description = 'description';

  static const String price = 'price';

  static const String quantity = 'quantity';

  static const String CodeaBarres = 'codea_barres';

  static const String rating = 'rating';

  static const String x = 'x';

  static const String y = 'y';

  static const String recommandes = 'recommandes';

  static const String listes = 'listes';
}
