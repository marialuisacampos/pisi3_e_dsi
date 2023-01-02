import 'package:easyfood/pages/previewPage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MainApp());
}

class MainApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EasyFood",
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: PreviewPage(),
    );
  }
  
}