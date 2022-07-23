import 'dart:convert';

import 'package:http/http.dart';
import 'package:newspaper_app/models/Article.dart';

class ApiService{
  String endPoint = 'https://saurav.tech/NewsAPI/top-headlines/category/health/in.json';

  Future<List<Article>> getArticles() async{
    var url = Uri.parse(endPoint);
    Response response = await get(url);
    if(response.statusCode == 200){
      Map<String,dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic item)=>Article.fromJSON(item)).toList();
      return articles;
    }else{
      throw("Can't get articles");
    }
  }
}