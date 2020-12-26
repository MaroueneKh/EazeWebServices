import 'package:angel_serialize/angel_serialize.dart';
import 'package:markdown/markdown.dart';

part 'vente.g.dart';

@serializable
class _Vente extends Model {
  String ticket;
  String  date;
  String client;
  String frais ;
  String total ;
  String magasin ;
  String trc ;




 // String get contentAsHtml => markdownToHtml(content);
}
