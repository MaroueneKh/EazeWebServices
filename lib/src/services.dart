import 'package:angel_framework/angel_framework.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:angel_mongo/angel_mongo.dart';

Future configureServer(Angel app) async {
//Db db = await Db.create('mongodb+srv://ahmed:0000@cluster0.4bvcv.mongodb.net/EAZE?retryWrites=true&w=majority');
//mongodb+srv://ahmed:*****@cluster0.4bvcv.mongodb.net/EAZAretryWrites=true&w=majority?authSource=admin&replicaSet=atlas-y7iuz0-shard-0&readPreference=primary&appname=MongoDB%20Compass%20Community&ssl=true
  final db = Db('mongodb://localhost:27017/OSC');

await db.open();

  app.use('client', MongoService(db.collection('client')));
  app.use('products', MongoService(db.collection('products')));
  app.use('listes', MongoService(db.collection('listes')));
  app.use('facture', MongoService(db.collection('facture')));
    app.use('desinfection', MongoService(db.collection('desinfection')));
        app.use('vente', MongoService(db.collection('vente')));
            app.use('depense', MongoService(db.collection('depense')));
}