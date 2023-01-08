 // HTTP request services
 // it allow us to make a single get http request
 // from the API and get the Articles and then return a list of articles
import 'dart:convert';

import 'package:flutterr/model/article_model.dart';
 import 'package:http/http.dart' as http;
 class ApiService{
   // add EndPoint URL



   Future<List<Article>> getArticle() async{
     final response= await http.get(Uri.parse("https://newsapi.org/v2/everything?q=Apple&from=2023-01-08&sortBy=popularity&apiKey=f0dcfb71e7064078a1dab4787564437c"));

     if(response.statusCode==200)
     {
     Map<String, dynamic> json=jsonDecode(response.body);

     List<dynamic> body= json['articles'];

     // this line allow us to get different article from the json file and putting them into a list

     List<Article> articles=
         body.map((dynamic item) => Article.fromJson(item)).toList();
     return articles;
     }
     else
       {
         throw ("Can't get the articles");
       }


   }


 }