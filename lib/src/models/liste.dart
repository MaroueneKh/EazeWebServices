import 'package:angel_serialize/angel_serialize.dart';
import 'package:markdown/markdown.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:simple_blog_cms/src/models/produit.dart';

part 'liste.g.dart';

@serializable
class _Liste extends Model {
  List<String>products = new List<String>();
  String  nom;
  String id_client ;


  





 // String get contentAsHtml => markdownToHtml(content);
}
