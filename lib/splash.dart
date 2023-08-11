import 'package:flutter/material.dart';

void main() {
  //attach our widget tree to the UI
  runApp(MaterialApp(
    //default theme of our app
    home: Splashpage(), //initial page to be launched
  ));
}

//stateless means this page dosn't undergo any statechanges
class Splashpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Splash Page')),
    );
  }
}
