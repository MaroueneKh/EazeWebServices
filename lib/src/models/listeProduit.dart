import 'package:angel_serialize/angel_serialize.dart';
import 'package:markdown/markdown.dart';
import 'package:mongo_dart/mongo_dart.dart';

part 'listeProduit.g.dart';

@serializable
class _ListeProduit extends Model {

  String id_produit;
  String  id_liste;
  





 // String get contentAsHtml => markdownToHtml(content);
}
