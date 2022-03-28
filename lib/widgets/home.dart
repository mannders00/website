import 'package:flutter/material.dart';
import 'package:personal_website/widgets/front.dart';
import 'package:personal_website/widgets/aboutme.dart';
import 'package:personal_website/widgets/skills.dart';
import 'package:personal_website/widgets/experience.dart';

import 'dart:html' as html;

class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);
  
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height - kToolbarHeight;
    
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            TextButton(onPressed: () => {html.window.open('https://github.com/matta9001/', 'GitHub')}, child: Text('', style: TextStyle(fontSize: 36, color: Colors.blue),),),
            TextButton(onPressed: () => {html.window.open('https://www.linkedin.com/in/matthew-j-anderson/', 'LinkedIn')}, child: Text('', style: TextStyle(fontSize: 36, color: Colors.blue),),),
            TextButton(onPressed: () => {html.window.open('mailto:matta9001@gmail.com', 'email')}, child: Text('', style: TextStyle(fontSize: 36, color: Colors.blue),),),
          ],
        ),
        actions: <Widget>[
          TextButton (
            onPressed: () => { jumpTo(_height, 0) },
            child: const Text('Home')
          ),
          TextButton (
            onPressed: () => { jumpTo(_height, 1) },
            child: const Text('About Me')
          ),
          TextButton (
            onPressed: () => { jumpTo(_height, 2) },
            child: const Text('Skills')
          ),
          TextButton (
            onPressed: () => { jumpTo(_height, 3) },
            child: const Text('Experience')
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          generatePane(_width, _height, const Front()),
          generatePane(_width, _height, AboutMe()),
          generatePane(_width, _height, Skills()),
          generatePane(_width, _height, Experience()),
        ],
        controller: controller,
      )
    );
  }

  Widget generatePane(x, y, parent){
    return SizedBox(
      width: x, 
      height: y,
      child: parent,
    );
  }
  
  void jumpTo(height, i) {
    controller.animateTo(height * i, duration: const Duration(milliseconds: 500), curve: Curves.easeInSine);
  }
}