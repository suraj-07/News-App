// detail of the article
import 'package:flutter/material.dart';
import 'package:flutterr/model/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({required this.article});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true ,
      appBar : AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(

        padding: const EdgeInsets.all(0.0),
        child: Column(

          children: [

            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                // height: h,
                // width: double.infinity,
                height: MediaQuery.of(context).size.height , //height to 10% of screen height, 100/10 = 0.1
                width: MediaQuery.of(context).size.width ,


                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(article.urlToImage),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24,bottom: 64),
                      child: Text(article.title, style: TextStyle(fontWeight: FontWeight.w700,
                          fontSize: 29,
                          color: Color(0xfff2f2f2)
                      ),
                      ),
                    ),

                    SizedBox(height: 8.0,),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(article.source.name,style: TextStyle(

                          fontSize: 20,
                          color: Color(0xfff2f2f2)
                      ),),
                    ),
                    SizedBox(height: 8.0,),
                    Text(article.description, style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFbababa)
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

