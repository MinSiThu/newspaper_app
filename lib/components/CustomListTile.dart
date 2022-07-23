import 'package:flutter/material.dart';
import 'package:newspaper_app/models/Article.dart';
import 'package:newspaper_app/screens/home/ArticleDetailScreen.dart';

Widget CustomListTile(Article article,BuildContext context){
  return InkWell(
      onTap: (){
        Navigator.push(context, 
          MaterialPageRoute(builder: (context)=>ArticleDetailPage(article:article))
        );
      },
      child: Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(blurRadius: 3.0,color:Colors.black)]
      ),
      child: Column(
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
        Text(article.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
      ]),
    ),
  );
}