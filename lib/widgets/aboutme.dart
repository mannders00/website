import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AboutMe extends StatelessWidget {
  AboutMe({ Key? key }) : super(key: key);
  
  var description =
  '''
  Hello! Welcome to my landing page.
  
  My name is Matthew Anderson and I'm a Software Engineer and tech enthusiast based in Chicago IL.
  
  I have a BS in Computer Science and currently work full time at TIBCO Software.

  My technical interests are primarily centered around networking, simulations, Linux, and privacy. That being said I am always interested in new technology which has the potential to make a positive impact on our all lives.

  Tech aside, I'm passionate about fitness, playing guitar, and learning new things.
  ''';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              child: Image.asset('profile.jpg'),
            )
          )
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                widthFactor: 0.8,
                heightFactor: 0.8,
                child: AutoSizeText(
                  description,
                  textAlign: TextAlign.center,
                  minFontSize: 8,
                )
              ),
            )
          )
        )
      ],
    );
  }
}