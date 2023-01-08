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
        margin: EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),


        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
             color: Colors.black12,
             blurRadius: 3.0,
            )
          ],



        ),

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
                  fit: BoxFit.fill

                ),
                    borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Colors.black,
                        Colors.black.withOpacity(0.3),
                      ]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [


                  SizedBox(height: 8.0,),
                  Text(article.title, style: TextStyle(fontFamily: 'RobotoSlab', fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  SizedBox(height: 8.0,),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(article.source.name,style: TextStyle(fontFamily: 'RobotoSlab',fontSize: 12 , color: Color(0xfff2f2f2), fontWeight: FontWeight.w700),),

                    ),
                  ),

                ],

              ),

            ),



          ],

        ),

      ),


    ),
  );
}