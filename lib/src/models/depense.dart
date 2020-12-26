import 'package:angel_serialize/angel_serialize.dart';
import 'package:markdown/markdown.dart';

part 'depense.g.dart';

@serializable
class _Depense extends Model {
  String fullName;
  String  factureCode;
  String designation;
  String montantTVA ;
  String mttotal ;




 // String get contentAsHtml => markdownToHtml(content);
}
