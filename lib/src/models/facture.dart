import 'package:angel_serialize/angel_serialize.dart';
import 'package:markdown/markdown.dart';

part 'facture.g.dart';

@serializable
class _Facture extends Model {
  String id_client;
  String  tva;
  String remise;
  String montantfinal ;
  List<String> produits ;

 


 // String get contentAsHtml => markdownToHtml(content);
}
