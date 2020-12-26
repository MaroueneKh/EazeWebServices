import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';
import 'package:angel_framework/angel_framework.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:corsac_jwt/corsac_jwt.dart';
import 'models/client.dart';
import 'models/liste.dart';
import 'models/produit.dart';
import 'models/facture.dart';
import 'models/desinfection.dart';
import 'models/vente.dart';
import 'models/depense.dart';
import './validator.dart';
import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);
AngelConfigurer configureServer() => (Angel app) {
      app.get('/', (req, res) async {
        var clientService = app.findService('client');
        var clientList = await clientService.index();
        var clients = clientList.map((article) {
          return ClientSerializer.fromMap(article);
        }).toList();
          return res.json(clients) ;
      });
        app.post('/recommandations', (req, res) async {
     var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .index({'query': where.eq('recommandes',req.bodyAsMap['email'])});
          var produits = produitMap.map((produit) {
          return ProduitSerializer.fromMap(produit);
        }).toList();
          return res.json(produits) ;
      });
	     app.get('/ventes', (req, res) async {
       var venteService = app.findService('vente');
        var venteList = await venteService.index();
      return res.json(venteList) ;
      });
	   app.get('/depenses', (req, res) async {
       var depenseService = app.findService('depense');
        var depenseList = await depenseService.index();
      return res.json(depenseList) ;
      });
     app.post('/clientsignin', (req, res) async {
        var clientService = app.findService('client');
		await req.parseBody();
        print(req.bodyAsMap['email']);
    var clientMap = await clientService
            .findOne({'query': where.eq('email',req.bodyAsMap['email'])});
        var client = ClientSerializer.fromMap(clientMap);
        var isCorrect = DBCrypt().checkpw(req.bodyAsMap['pwd'],client.password);
       if (!isCorrect)
       {
      res.json('mot de passe invalide') ;
       }
        var builder = new JWTBuilder();
  var token = builder
    ..issuer = 'marouene khadhraoui'
    ..expiresAt = DateTime.now().add(Duration(minutes: 60))
    ..setClaim('data', {'userId': client.id,'pwd': client.password,'email':client.email})
    ..getToken(); // returns token without signature
  var signer = JWTHmacSha256Signer('sharedSecret');
  var signedToken = builder.getSignedToken(signer);
  var stringToken = signedToken.toString();
res.json(stringToken) ;
  });
   app.post('/UtilisateurToken', (req, res) async {  
     	await req.parseBody();
var stringToken = req.bodyAsMap['token'].toString();
final parts = stringToken.split('.');
  if (parts.length != 3) {
    throw Exception('invalid token');
  }
  final payload = _decodeBase64(parts[1]);
  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    throw Exception('invalid payload');
  }
  res.json(payloadMap);
  });
  app.post('/ajouterDepense', (req, res) async {  
   await req.parseBody();
          var depenseService = app.findService('depense');
          var depense = DepenseSerializer.fromMap(req.bodyAsMap);
          var createdDepense = await depenseService.create(depense.toJson());
          
          res.json(createdDepense) ;  
  });
app.post('/Inscription', (req, res) async {  
   await req.parseBody();

          var articleService = app.findService('client');
          var client = ClientSerializer.fromMap(req.bodyAsMap);
          client.createdAt = DateTime.now();
          client.updatedAt = DateTime.now();
          var createdArticle = await articleService.create(client.toJson());
          res.json(createdArticle) ;  
  });
     app.get('/produits', (req, res) async {
        var produitService = app.findService('products');
        var produitList = await produitService.index();
      return res.json(produitList) ;
  //      var produits = produitList.map((article) {
    //      return ProduitSerializer.fromMap(article);
      //  }).toList();
        //  return res.json(produits) ;
      });  
        app.post('/produitsByCategorie', (req, res) async {
      var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .index({'query': where.eq('category',req.bodyAsMap['category'])});
          var produits = produitMap.map((article) {
          return ProduitSerializer.fromMap(article);
        }).toList();
          return res.json(produits) ;
      });
         app.post('/produitByNom', (req, res) async {
      var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .index({'query': where.eq('nom',req.bodyAsMap['nom'])});
          var produits = produitMap.map((produit) {
          return ProduitSerializer.fromMap(produit);
        }).toList();
          return res.json(produits) ;
      });
     app.post('/produitsConsultes', (req, res) async {
     var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .index({'query': where.eq('consultes',req.bodyAsMap['user'])});
          var produits = produitMap.map((produit) {
          return ProduitSerializer.fromMap(produit);
        }).toList();
          return res.json(produits) ;

      });
         app.post('/changeRating', (req, res) async {
     var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .update(where.eq('_id','5f578223d48ae86699a2bddc'),modify.set('rating','4'));
          var produit = ProduitSerializer.fromMap(produitMap);
          return res.json(produit) ;
        
      });
	      app.post('/produitByCode', (req, res) async {
      var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .findOne({'query': where.eq('codea_barres',req.bodyAsMap['codea_barres'])});
          var produit = ProduitSerializer.fromMap(produitMap);
          return res.json(produit) ;
      });
        app.post('/VerifierDes', (req, res) async {
      var desinfectionService = app.findService('desinfection');
		await req.parseBody();
    var desMap = await desinfectionService
            .findOne({'query': where.eq('completion','done')});
          var produit = DesinfectionSerializer.fromMap(desMap);
          return res.json(produit) ;
      });
          app.post('/listeByProduit', (req, res) async {
      var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .index({'query': where.eq('listes',req.bodyAsMap['idliste'])});
           var produits = produitMap.map((produit) {
          return ProduitSerializer.fromMap(produit);
        }).toList();
          return res.json(produits) ;
      });

         app.post('/ajouterListe', (req, res) async {  
         await req.parseBody();
          var listeService = app.findService('listes');
          var liste = ListeSerializer.fromMap(req.bodyAsMap);
          liste.createdAt = DateTime.now();
          liste.updatedAt = DateTime.now();
          var createdListe = await listeService.create(liste.toJson());
          res.json(createdListe) ;
  });
     app.delete('/supprimerListe', (req, res) async {  
          var listeService = app.findService('liste');
		await req.parseBody();
    var listeMap = await listeService
            .remove({'query': where.eq('nom','rentree')});
       
  });
        app.post('/listeByIdClient', (req, res) async {
      var listeService = app.findService('listes');
		await req.parseBody();
    var listeMap = await listeService
            .index({'query': where.eq('id_client',req.bodyAsMap['id_client'])});
          var listes = listeMap.map((article) {
          return ListeSerializer.fromMap(article);
        }).toList();
          return res.json(listes) ;
      });
     


         app.post('/factureByIdClient', (req, res) async {
      var factureService = app.findService('facture');
		await req.parseBody();
    var factureMap = await factureService
            .index({'query': where.eq('id_client',req.bodyAsMap['id_client'])},);
          var factures = factureMap.map((facture) {
          return FactureSerializer.fromMap(facture);
        }).toList();
          return res.json(factures) ;
      });
      


app.post('/ajouterProduitListe', (req, res) async {
   var produitService = app.findService('products');
		await req.parseBody();
    var produitMap = await produitService
            .index({'query': where.eq('nom',req.bodyAsMap['nom'])});
          var produits = produitMap.map((produit) {
          return ProduitSerializer.fromMap(produit);
        }).toList();
      var produit = produits[0] ;  
       List<String> clone = []..addAll(produit.listes);
       clone.add(req.bodyAsMap['id_liste']);
         produit.listes = clone ;
           var updatedArticle =
             await produitService.update(produit.id,produit.toJson());
 var produitUpdated = ProduitSerializer.fromMap(updatedArticle);

          res.json(produitUpdated) ;
              
      
        //res.json(updatedArticle);
//var article = ClientSerializer.fromMap(req.bodyAsMap);

  //        article.updatedAt = DateTime.now();

    //      var updatedArticle =
      //        await produitService.update(article.id,article.toJson());


      });


app.post('/ajouterProduitListe2', (req, res) async {
   var listeService = app.findService('listes');
		await req.parseBody();
    var listeMap = await listeService
            .index({'query': where.eq('_id',req.bodyAsMap['id_liste'])});
          var listes = listeMap.map((liste) {
          return ListeSerializer.fromMap(liste);
        }).toList();
      var liste = listes[0] ;  
       List<String> clone = []..addAll(liste.products);
       clone.add(req.bodyAsMap['nom']);
         liste.products = clone ;
           var updatedArticle =
             await listeService.update(liste.id,liste.toJson());
 var listeUpdated = ListeSerializer.fromMap(updatedArticle);

          res.json(listeUpdated) ;
              
      
        //res.json(updatedArticle);
//var article = ClientSerializer.fromMap(req.bodyAsMap);

  //        article.updatedAt = DateTime.now();

    //      var updatedArticle =
      //        await produitService.update(article.id,article.toJson());


      });


















    app.get('/posts/:slug/edit', (req, res) async {
    var articleService = app.findService('articles');
        var articleMap = await articleService
            .findOne({'query': where.eq('slug', req.params['slug'])});
        var article = ClientSerializer.fromMap(articleMap);
        await res.render('article_form', {'editing': true, 'article': article});
      });

      app.get('/search', (req, res) async {
        var query = req.queryParameters['q'];
        var articleService = app.findService('articles');

        var validationResult = searchValidator.check(req.queryParameters);
        var templateData = {};

        if (validationResult.errors.isNotEmpty) {
          // Handle error
          templateData
              .addAll({'errors': validationResult.errors, 'articles': []});
        } else {
          var filteredArticleList = await articleService.index(
              {'query': where.jsQuery('this.title.indexOf("$query") > -1')});
          var filteredArticles = filteredArticleList.map((article) {
            return ClientSerializer.fromMap(article);
          }).toList();

          templateData['articles'] = filteredArticles;
        }

        await res.render('search', {
          'query': query,
          ...templateData,
        });
      });

      app.get(
          '/new',
          (req, res) => res.render('article_form', {
                'title': 'new',
              }));
      app.post('/new', (req, res) async {
        await req.parseBody();
        // print(req.bodyAsMap);
        var validationResult = articleValidator.check(req.bodyAsMap);
        var templateData = <String, dynamic>{};

        if (validationResult.errors.isNotEmpty) {
          templateData['errors'] = validationResult.errors;

          var title = req.bodyAsMap['title'];
          var slug = req.bodyAsMap['slug'];
          var publishDate = req.bodyAsMap['publish_date'];
          var content = req.bodyAsMap['content'];

          templateData['article'] = Client(
        //    title: title.isNotEmpty ? title : null,
          //  slug: slug.isNotEmpty ? slug : null,
            //publishDate:
              //  publishDate.isNotEmpty ? DateTime.parse(publishDate) : null,
            //content: content.isNotEmpty ? content : null,
          );

          res.statusCode = HttpStatus.badRequest;
        } else {
          var articleService = app.findService('articles');
          var article = ClientSerializer.fromMap(req.bodyAsMap);

          article.createdAt = DateTime.now();
          article.updatedAt = DateTime.now();

          var createdArticle = await articleService.create(article.toJson());

          templateData.addAll({
            'created': true,
            'article': ClientSerializer.fromMap(createdArticle)
          });
        }

        await res.render('article_form', templateData);
      });

      app.get('/posts/:slug', (req, res) async { 
        var articleService = app.findService('client');
        var articleMap = await articleService
            .findOne({'query': where.eq('slug', req.params['slug'])});
        var article = ClientSerializer.fromMap(articleMap);
        await res.render('article', {'article': article});
      });

      app.get('/posts/:slug/edit', (req, res) async {
        var articleService = app.findService('articles');
        var articleMap = await articleService
            .findOne({'query': where.eq('slug', req.params['slug'])});
        var article = ClientSerializer.fromMap(articleMap);
        await res.render('article_form', {'editing': true, 'article': article});
      });

      app.post('/posts/:slug/edit', (req, res) async {
        await req.parseBody();

        var articleService = app.findService('articles');
        var methodOverride = req.bodyAsMap['_method'];

        if (methodOverride is String && methodOverride == 'delete') {
          await articleService.remove(req.bodyAsMap['id']);
          await res.redirect('/');
          return;
        }

        var validationResult = articleValidator.check(req.bodyAsMap);
        var templateData = <String, dynamic>{};

        if (validationResult.errors.isNotEmpty) {
          templateData['errors'] = validationResult.errors;

          var id = req.bodyAsMap['id'];
          var title = req.bodyAsMap['title'];
          var slug = req.bodyAsMap['slug'];
          var publishDate = req.bodyAsMap['publish_date'];
          var content = req.bodyAsMap['content'];

          templateData['article'] = Client(
       //     id: id,
         //   title: title.isNotEmpty ? title : null,
           // slug: slug.isNotEmpty ? slug : null,
            //publishDate:
              //  publishDate.isNotEmpty ? DateTime.parse(publishDate) : null,
            //content: content.isNotEmpty ? content : null,
          );

          res.statusCode = HttpStatus.badRequest;
        } else {
          var article = ClientSerializer.fromMap(req.bodyAsMap);

          article.updatedAt = DateTime.now();

          var updatedArticle =
              await articleService.update(article.id,article.toJson());

          templateData.addAll({
            'edited': true,
            'article': ClientSerializer.fromMap(updatedArticle)
          });
        }

        await res.render('article_form', templateData);
      });

      // Throw a 404 if no route matched the request
      app.fallback((req, res) => throw AngelHttpException.notFound(
          message: "That route doesn't exist"));
    };
String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Illegal base64url string!"');
  }

  return utf8.decode(base64Url.decode(output));
}
