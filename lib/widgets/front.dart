
import 'package:flutter/material.dart';

class Front extends StatelessWidget {
  const Front({ Key? key }) : super(key: key);
  
  final double subSize = 32; 
   
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
              child: SelectableText.rich(
                TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "Matthew Anderson\n", style: TextStyle(fontSize: 64,)),
                    TextSpan(text: 'Software Engineer Portfolio\n\n', style: TextStyle(fontSize: subSize,)),
                    TextSpan(text: 'matta9001@gmail.com\n', style: TextStyle(fontSize: subSize  ,)),
                    TextSpan(text: 'github.com/matta9001\n', style: TextStyle(fontSize: subSize ,)),
                    TextSpan(text: 'linkedin.com/in/matthew-j-anderson', style: TextStyle(fontSize: subSize,)),
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