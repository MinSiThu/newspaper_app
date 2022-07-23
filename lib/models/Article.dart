import 'package:newspaper_app/models/Source.dart';


class Article{
  String author;
  Source source;
  String title;
  String description;
  String content;
  String url;
  String urlToImage;
  String publishedAt;

  Article({required this.source,required this.author,required this.title,required this.description,required this.content,required this.url,required this.urlToImage,required this.publishedAt});

  factory Article.fromJSON(Map<String,dynamic> json){
    return Article(
      source: Source.fromJSON(json['source']),
      author:json['author'] as String,
      title:json['title'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String
    );
  }
}