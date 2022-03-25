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
  hi
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
          child: FractionallySizedBox (
            widthFactor: 0.5,
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

  Widget getContentPanel(Widget content) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(_cellPadding),
        child: AspectRatio (
          aspectRatio: 4/3, 
          child: Container(
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(24)), border: Border.all(color: Colors.white)),
            child: content,
          )
        )
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth / constraints.maxHeight > 1) {
          return _buildWideGallery();
        } else {
          return _buildTallGallery();
        }
      }
    );
  }
  
  Widget _buildWideGallery(){
    return Column (
      children: [
        Expanded(
          child: Row(
            children : [
              getContentPanel(const Placeholder()), // Programming languages
              getContentPanel(const Placeholder()), // Linux
              getContentPanel(const Placeholder()), // Flutter
            ]
          ),
        ),
        Expanded (
          child: Row(
            children : [
              getContentPanel(const Placeholder()), // Docker
              getContentPanel(const Placeholder()), // Unity3D
              getContentPanel(const Placeholder()), // NeoVim
            ]
          ),
        ),
      ],
    );
  }

  Widget _buildTallGallery(){
    return Row (
      children: [
        Expanded(
          child: Column(
            children : [
              getContentPanel(const Placeholder()), // Programming languages
              getContentPanel(const Placeholder()), // Linux
              getContentPanel(const Placeholder()), // Flutter
            ]
          ),
        ),
        Expanded (
          child: Column(
            children : [
              getContentPanel(const Placeholder()), // Docker
              getContentPanel(const Placeholder()), // Unity3D
              getContentPanel(const Placeholder()), // NeoVim
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