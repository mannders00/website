import 'package:flutter/material.dart';
import 'package:personal_website/widgets/front.dart';
import 'package:personal_website/widgets/aboutme.dart';
import 'package:personal_website/widgets/skills.dart';
import 'package:personal_website/widgets/experience.dart';

import 'dart:html' as html;

class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);
  
  final ScrollController controller = ScrollController();
  final double titleFontSize = 32;

  @override
  Widget build(BuildContext context) {
    
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height - kToolbarHeight;
    
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Flexible(child: TextButton(onPressed: () => { jumpTo(_height, 0) }, child: FittedBox(child: Text('Home', style: TextStyle(fontSize: titleFontSize),)),)),
            Flexible(child: TextButton(onPressed: () => { jumpTo(_height, 1) }, child: FittedBox(child: Text('About Me', style: TextStyle(fontSize: titleFontSize),)),)),
            Flexible(child: TextButton(onPressed: () => { jumpTo(_height, 2) }, child: FittedBox(child: Text('Skills', style: TextStyle(fontSize: titleFontSize),)),)),
            Flexible(child: TextButton(onPressed: () => { jumpTo(_height, 3) }, child: FittedBox(child: Text('Experience', style: TextStyle(fontSize: titleFontSize),)),)),
            Flexible(child: TextButton(onPressed: () => {html.window.open('https://github.com/matta9001/', 'GitHub')}, child: Text('', style: TextStyle(fontSize: titleFontSize, color: Colors.blue),),)),
            Flexible(child: TextButton(onPressed: () => {html.window.open('https://www.linkedin.com/in/matthew-j-anderson/', 'LinkedIn')}, child: Text('', style: TextStyle(fontSize: titleFontSize, color: Colors.blue),),)),
            Flexible(child: TextButton(onPressed: () => {html.window.open('mailto:matta9001@gmail.com', 'email')}, child: Text('', style: TextStyle(fontSize: titleFontSize, color: Colors.blue),),)),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          generatePane(_width, _height, const Front()),
          generatePane(_width, _height, const AboutMe()),
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