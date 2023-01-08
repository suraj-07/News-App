//  import 'package:dart:html';
import 'package:flutter/material.dart';
import 'package:flutterr/components/CustomList.dart';
import 'package:flutterr/services/app_service.dart';

import 'model/article_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Homepage(),
    );
  }
}
 
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  ApiService client=ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar : AppBar(
         centerTitle: true,
         title: Text("HEADLINES",style: TextStyle(fontFamily: 'RobotoSlab', color: Color(0xffffffff), fontSize :29,fontWeight: FontWeight.w700) ),
         backgroundColor: Colors.black,
       ),
      backgroundColor: Color(0xff464646),

      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          //let's check if we got a response or not
          if(snapshot.hasData) {
            //list iof articles

            List<Article>? articles = snapshot.data;
            return ListView.builder(
              itemCount: articles!.length,
              itemBuilder: (context, index) =>
               customList(articles[index],context),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
