import 'package:flutter/material.dart';
import "screens/home/HomeScreen.dart";

void main(){
  runApp(NewspaperApp());
}

class NewspaperApp extends StatelessWidget{
  const NewspaperApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Newspaper',
      home:HomeScreen(),
    );
  }
}