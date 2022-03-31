import 'package:flutter/material.dart';
import 'package:personal_website/widgets/home.dart';

void main() => runApp(const WebApp());

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    
    const backgroundColor = Colors.black;//Color(0xff181a1f);
    final theme = ThemeData(
      canvasColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        shadowColor: Colors.transparent 
      ),
      primarySwatch: Colors.grey,
      textTheme: Theme.of(context).textTheme.apply(
        fontFamily: 'Inconsolata',
        bodyColor: Colors.white,
      ),
    );

    return MaterialApp(
      theme: theme,
      home: Home(), 
    );
  }
}