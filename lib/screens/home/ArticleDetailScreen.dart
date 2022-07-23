import 'package:flutter/material.dart';
import 'package:newspaper_app/models/Article.dart';

class ArticleDetailPage extends StatelessWidget {
  
  final Article article;

  ArticleDetailPage({required this.article});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(this.article.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(decoration: BoxDecoration(
          image: DecorationImage(fit:BoxFit.cover,image: NetworkImage(article.urlToImage)),
          borderRadius: BorderRadius.circular(12.0)
        ),),
        SizedBox(height:8),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),color:Colors.red
        ,child:Text(article.source.name)),
        SizedBox(height: 8,),
        Text(article.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        SizedBox(height: 8),
        Text(article.description)
      ]),
    );
  }
}