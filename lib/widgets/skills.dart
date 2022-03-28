import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Skills extends StatelessWidget {
  Skills({ Key? key }) : super(key: key);
  
  String programmingDescription = 
  """

  Although I've had brief encounters with many languages, I am the most qualified and interested to work in the following languages (sorted by proficiency):

  \t Python
  \t Java
  \t Dart 
  \t Go
  \t C 
  \t Haskell
  """; 

  String linuxDescription =
  """

  I started my serious Linux journey after installing Arch Linux, becoming infatuated with idea of creating my own customized OS from the ground up.
  
  Through this I've developed a strong working knowledge of various OS concepts such as package management and processes, in addition to mastering the CLI. 

  Although I currently prefer lower maintenance distributions, I still use it as a daily driver for both server and desktop use.
  """; 

  String dockerDescription =
  """

  Through both my personal and professional experience, environment management and server configuration has always proven to be a hassle.

  I use docker daily to save countless hours when testing server environments or deploying to all major operating systems.
  """; 

  String flutterDescription =
  """
  
  Flutter is my choice of front end framework due to it's tooling ecosystem, speed, and platform availability.

  Some evidence proving my knowledge is the website you're reading right now.
  """; 

  String unityDescription =
  """
  
  Unity3D was my introduction to programming driven by my desire to make video games as a child.

  Since then, I've used it in academia to create interactive 3D driving simulations for research on autonomous systems.

  It currently resides as my go-to tool for quickly creating 3D simulations or complex interactive scenes.
  """; 

  String hardwareDescription =
  """
  
  Although I'm mostly software oriented, building many computers helped me develop a strong understanding of computer hardware.

  I also have done physical projects with Raspberry Pi, which helped me understand basic circuitry.
  """; 

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      heightFactor: 0.9,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                SkillTile(title: 'Programming', description: programmingDescription, color: Color(0xffe06c75), index: 0,),
                SkillTile(title: 'GNU Linux', description: linuxDescription, color: Color(0xff98c379), index: 1,),
                SkillTile(title: 'Docker', description: dockerDescription, color: Color(0xffe5c07b), index: 2,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SkillTile(title: 'Flutter', description: flutterDescription, color: Color(0xff61afef), index: 3,),
                SkillTile(title: 'Unity3D', description: unityDescription, color: Color(0xffc678dd), index: 4,),
                SkillTile(title: 'Hardware', description: hardwareDescription, color: Color(0xff56b6c2), index: 5,),
              ],
            ),
          )
        ],
      ),
    );
  }
  
}

class SkillTile extends StatelessWidget {
  const SkillTile({ Key? key, required this.title, required this.description, required this.color, required this.index}) : super(key: key);
  
  final String title;
  final String description;
  final Color color;
  final int index;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Flexible(
                child: AutoSizeText.rich(
                  TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(text: '0' + index.toString() + ' ', style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 32)),
                      TextSpan(text: title + '\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                    ]
                  ),
                  wrapWords: false,
                  maxLines: 1,
                  minFontSize: 8,
                  stepGranularity: 1,
                ),
              ),
              Expanded(
                child: AutoSizeText.rich(
                  TextSpan(
                    text: description,
                    style: DefaultTextStyle.of(context).style,
                  ),
                  stepGranularity: 1,
                  minFontSize: 8,
                ),
              )
            ],
          ),
        )

      ),
    );
  }
}