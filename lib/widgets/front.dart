
import 'package:flutter/material.dart';

class Front extends StatelessWidget {
  const Front({ Key? key }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: "Matthew Anderson\n", style: TextStyle(fontSize: 48,)),
                    TextSpan(text: 'Software Engineer Portfolio\n\n'),
                    TextSpan(text: 'matta9001@gmail.com\n'),
                    TextSpan(text: 'github.com/matta9001\n'),
                    TextSpan(text: 'linkedin.com/in/matthew-j-anderson'),
                  ]
                ),
              ),
            ),
          )
        ),
        Expanded(
          flex: 2,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/highway_wireframe_transparent_white.png', fit: BoxFit.cover,),
            ],
          )
        )
      ],
    );
  }
}