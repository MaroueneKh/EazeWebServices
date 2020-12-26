// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Client extends _Client {
  Client(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.nom,
      this.prenom,
      this.DateNaissance,
      this.gouvernorat,
      this.chaine,
      this.magasin,
      this.profession,
      this.codepostal,
      this.civilite,
      this.email,
      this.tel,
      this.password,
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
  String nom;

  @override
  String prenom;

  @override
  String DateNaissance;

  @override
  String gouvernorat;

  @override
  String chaine;

  @override
  String magasin;

  @override
  String profession;

  @override
  String codepostal;

  @override
  String civilite;

  @override
  String email;

  @override
  String tel;

  @override
  String password;

  @override
  List<String> produits;

  Client copyWith(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String nom,
      String prenom,
      String DateNaissance,
      String gouvernorat,
      String chaine,
      String magasin,
      String profession,
      String codepostal,
      String civilite,
      String email,
      String tel,
      String password,
      List<String> produits}) {
    return Client(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        nom: nom ?? this.nom,
        prenom: prenom ?? this.prenom,
        DateNaissance: DateNaissance ?? this.DateNaissance,
        gouvernorat: gouvernorat ?? this.gouvernorat,
        chaine: chaine ?? this.chaine,
        magasin: magasin ?? this.magasin,
        profession: profession ?? this.profession,
        codepostal: codepostal ?? this.codepostal,
        civilite: civilite ?? this.civilite,
        email: email ?? this.email,
        tel: tel ?? this.tel,
        password: password ?? this.password,
        produits: produits ?? this.produits);
  }

  bool operator ==(other) {
    return other is _Client &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.nom == nom &&
        other.prenom == prenom &&
        other.DateNaissance == DateNaissance &&
        other.gouvernorat == gouvernorat &&
        other.chaine == chaine &&
        other.magasin == magasin &&
        other.profession == profession &&
        other.codepostal == codepostal &&
        other.civilite == civilite &&
        other.email == email &&
        other.tel == tel &&
        other.password == password &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.produits, produits);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      nom,
      prenom,
      DateNaissance,
      gouvernorat,
      chaine,
      magasin,
      profession,
      codepostal,
      civilite,
      email,
      tel,
      password,
      produits
    ]);
  }

  @override
  String toString() {
    return "Client(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, nom=$nom, prenom=$prenom, DateNaissance=$DateNaissance, gouvernorat=$gouvernorat, chaine=$chaine, magasin=$magasin, profession=$profession, codepostal=$codepostal, civilite=$civilite, email=$email, tel=$tel, password=$password, produits=$produits)";
  }

  Map<String, dynamic> toJson() {
    return ClientSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ClientSerializer clientSerializer = ClientSerializer();

class ClientEncoder extends Converter<Client, Map> {
  const ClientEncoder();

  @override
  Map convert(Client model) => ClientSerializer.toMap(model);
}

class ClientDecoder extends Converter<Map, Client> {
  const ClientDecoder();

  @override
  Client convert(Map map) => ClientSerializer.fromMap(map);
}

class ClientSerializer extends Codec<Client, Map> {
  const ClientSerializer();

  @override
  get encoder => const ClientEncoder();
  @override
  get decoder => const ClientDecoder();
  static Client fromMap(Map map) {
    return Client(
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
        prenom: map['prenom'] as String,
        DateNaissance: map['date_naissance'] as String,
        gouvernorat: map['gouvernorat'] as String,
        chaine: map['chaine'] as String,
        magasin: map['magasin'] as String,
        profession: map['profession'] as String,
        codepostal: map['codepostal'] as String,
        civilite: map['civilite'] as String,
        email: map['email'] as String,
        tel: map['tel'] as String,
        password: map['password'] as String,
        produits: map['produits'] is Iterable
            ? (map['produits'] as Iterable).cast<String>().toList()
            : null);
  }

  static Map<String, dynamic> toMap(_Client model) {
    if (model == null) {
      return null;
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'nom': model.nom,
      'prenom': model.prenom,
      'date_naissance': model.DateNaissance,
      'gouvernorat': model.gouvernorat,
      'chaine': model.chaine,
      'magasin': model.magasin,
      'profession': model.profession,
      'codepostal': model.codepostal,
      'civilite': model.civilite,
      'email': model.email,
      'tel': model.tel,
      'password': model.password,
      'produits': model.produits
    };
  }
}

abstract class ClientFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    nom,
    prenom,
    DateNaissance,
    gouvernorat,
    chaine,
    magasin,
    profession,
    codepostal,
    civilite,
    email,
    tel,
    password,
    produits
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String nom = 'nom';

  static const String prenom = 'prenom';

  static const String DateNaissance = 'date_naissance';

  static const String gouvernorat = 'gouvernorat';

  static const String chaine = 'chaine';

  static const String magasin = 'magasin';

  static const String profession = 'profession';

  static const String codepostal = 'codepostal';

  static const String civilite = 'civilite';

  static const String email = 'email';

  static const String tel = 'tel';

  static const String password = 'password';

  static const String produits = 'produits';
}
