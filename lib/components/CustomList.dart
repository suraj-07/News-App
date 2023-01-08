import 'package:flutter/material.dart';
import 'package:flutterr/model/article_model.dart';
import 'package:flutterr/pages/article_detail_pages.dart';

Widget customList(Article article, BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(
          context, 
          MaterialPageRoute(builder: (context)=> ArticlePage(
             article: article,
          )));
    },
    child: SingleChildScrollView (
      child: Container(
        margin: EdgeInsets.all(16),

       //padding: EdgeInsets.all(12),
        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
             color: Colors.black12,
             blurRadius: 3.0,
            )
          ]),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            padding: EdgeInsets.all(12),
              height: 250 ,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(article.urlToImage),
                  fit: BoxFit.cover
                ),
                    borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  // SizedBox(height: 8.0,),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors .red,
                  //     borderRadius: BorderRadius.circular(30.0),
                  //   ),
                  //   child: Text(article.source.name),
                  // ),

                  SizedBox(height: 8.0,),
                  Text(article.title, style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  SizedBox(height: 8.0,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(article.source.name,style: TextStyle(fontSize: 12 , color: Color.fromARGB(242, 242, 242, 242)),),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 8.0,),
            // Text(article.title, style: TextStyle(fontWeight: FontWeight.bold,
            //   fontSize: 20,
            // ),)
          ],
        ),
      ),
    ),
  );
}