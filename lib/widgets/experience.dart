import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Experience extends StatelessWidget {
  Experience({ Key? key }) : super(key: key);
   
  var experienceItems = const <Widget>[
    UnderlinedItem(
      title: 'TIBCO',
      date: 'May 2020 - Present',
      description: "After interning with TIBCO in May 2020, I have worked as a full time Software Engineer at TIBCO since May 2021. My work mostly focuses on providing support and enhancements for select TIBCO Messaging products. Since then, my skills in Python, Go, Docker, teamwork, and more have increased exponentially."
    ),
    UnderlinedItem(
      title: 'Semi-Autonomous Driving Research',
      date: 'October 2019 - January 2020',
      description: "Working in the Mechanical, Materials, and Aerospace Engineering department, I created a 3D driving simulation in Unity3D which aims to replicate a real life driving experience in order to collect data. Using projectors on the surrounding walls displaying my simulation, and a custom physical car frame with a digital steering wheel, users experienced a sensory experience akin to driving. This data was fed into custom designed algorithms aiming to assist drivers in optimizing fuel efficiency and tire wear."
    ),
    UnderlinedItem(
      title: 'Computer Science Teaching Assistant',
      date: 'August 2019 - May 2020',
      description: "Taught Java to introductory CS students, including basic programming and OOP principles such as objects, arrays, loops, and more. Also taught Data Structures and Algorithms to second year CS students, which focused on implementing and using various data structures such as Heaps, BSTrees, Linked Lists, and more."
    ),
    UnderlinedItem(
      title: 'BSCS @ the Illinois Institute of Technology',
      date: 'GPA-3.6/4 | August 2018 - May 2021',
      description: "Achieved a Bachelor's of Science in Computer Science degree at the Illinois Institute of Technology, graduating early in three years. Took a wide range of Science and Computer Science classes. Notable coursework includes: Operating Systems, Data Structures & Algorithms, Database Organization, Software Engineering, Introduction to Algorithms, Object Oriented Programming, Multivariate & Vector Calculus, Matrices or Matrix Algebra & Complex Variables, and Probability/Statistics."
    ),
    UnderlinedItem(
      title: 'Association for Computing Machinery',
      date: 'August 2018 - December 2019',
      description: "Developed a KaiOS mobile application to help individuals escape poverty. This won the “Most Feasible” award at PayPal Hack Chicago, where \$100 was donated to a charity of our choice. Attended HackIllinois, most notably contributed to the Anaconda project where I fixed bugs in source code. Met lots of like-minded individuals and discovered the importance/impact that technology could have on society."
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: experienceItems
    );
  }
}

class UnderlinedItem extends StatelessWidget {
  const UnderlinedItem({ Key? key, required this.title, required this.description, required this.date}) : super(key: key);
  
  final title;
  final description;
  final date;
  
  final double titleSize = 64;
  final double bodySize = 32;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        widthFactor: 0.75,
        heightFactor: 0.9,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: AutoSizeText(title, style: TextStyle(fontSize: titleSize),),
                    )
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: AutoSizeText(date, style: TextStyle(fontSize: titleSize)),
                    )
                  )
                ],
              )
            ),
            const Divider(color: Colors.blue),
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  description,
                  style: TextStyle(color: Colors.grey, fontSize: bodySize),
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}