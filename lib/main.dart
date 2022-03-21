import 'package:flutter/material.dart';
import 'package:personal_website/theme.dart';
import 'package:personal_website/widgets/Home.dart';

void main() => runApp(const WebApp());

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: WebTheme.theme,
      home: Home(), 
    );
  }
}