import 'package:flutter/material.dart';
import 'package:newspaper_app/components/CustomListTile.dart';
import 'package:newspaper_app/models/Article.dart';
import 'package:newspaper_app/services/api_service.dart';

class HomeScreen extends StatelessWidget{

  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('Newspaper App'),
      ),
      body:FutureBuilder(future: client.getArticles(),
        builder: (BuildContext context,AsyncSnapshot<List<Article>> snapShot){
          if(snapShot.hasData){
            List<Article>? articles = snapShot.data;
            return ListView.builder(
              itemCount: articles?.length,
              itemBuilder: (context,index) {
                return CustomListTile(articles![index],context);
              }
              );
          }
          return Center(child: CircularProgressIndicator(),);
        },
      )
    );
  }
}