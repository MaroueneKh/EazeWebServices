
import 'dart:ffi';

import 'package:angel_serialize/angel_serialize.dart';
import 'package:markdown/markdown.dart';

part 'produit.g.dart';

@serializable
class _Produit extends Model {
  String nom;
  String  category;
  String image ;
  String description ;
  String price ;
  String quantity ;
  String CodeaBarres ;
  String rating ;
  String x ;
  String y ;
  List<String> recommandes ;
List<String> listes = new List<String>();





 // String get contentAsHtml => markdownToHtml(content);
}
