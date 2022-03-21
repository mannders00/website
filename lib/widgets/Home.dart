import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);
  
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height - kToolbarHeight;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Digital Portfolio'),
        actions: <Widget>[
          TextButton (
            onPressed: () => { jumpTo(_height, 0) },
            child: const Text('About Me')
          ),
          TextButton (
            onPressed: () => { jumpTo(_height, 1) },
            child: const Text('Skills')
          ),
          TextButton (
            onPressed: () => { jumpTo(_height, 2) },
            child: const Text('Experience')
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
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
    controller.animateTo(height * i, duration: Duration(milliseconds: 500), curve: Curves.easeInSine);
  }
}

class AboutMe extends StatelessWidget {
  AboutMe({ Key? key }) : super(key: key);

  String summary =
  '''
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  ''';

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset('profile.jpg'),
            ),
          )
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 4, 24, 4),
            child: Text(
              summary,
              style: const TextStyle(color: Colors.white,),
              textAlign: TextAlign.center,
            ),
          )
        ),
        Divider(color: Colors.grey[800],),
      ],
    );
  }
}

class Skills extends StatelessWidget {
  Skills({ Key? key }) : super(key: key);
  
  final double _cellPadding = 24;
  final double _cellRadius = 24;

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        Expanded(
          child: Row(
            children : [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(_cellPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_cellRadius),
                      color: Colors.red,
                    ),
                  )
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(_cellPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_cellRadius),
                      color: Colors.blue,
                    ),
                  )
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(_cellPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_cellRadius),
                      color: Colors.yellow,
                    ),
                  )
                ),
              )
            ]
          ),
        ),
        Expanded (
          child: Row(
            children : [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(_cellPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_cellRadius),
                      color: Colors.orange,
                    ),
                  )
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(_cellPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_cellRadius),
                      color: Colors.purple,
                    ),
                  )
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(_cellPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_cellRadius),
                      color: Colors.green,
                    ),
                  )
                ),
              )
            ]
          ),
        ),
      ],
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}