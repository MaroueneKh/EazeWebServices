import 'package:angel_serialize/angel_serialize.dart';
import 'package:markdown/markdown.dart';

part 'client.g.dart';

@serializable
class _Client extends Model {
  String nom;
  String  prenom;
  String DateNaissance;
  String gouvernorat ;
  String chaine ;
  String magasin ;
  String profession ;
  String codepostal ;
  String civilite ;
  String email;
  String tel ;
  String password ;
  List<String> produits ;




 // String get contentAsHtml => markdownToHtml(content);
}
