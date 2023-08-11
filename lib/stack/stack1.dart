import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stack1(),
  ));
}

class stack1 extends StatelessWidget {
  const stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('first stack')),
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.blue,
          ),
          Positioned(
            top: 25,
            bottom: 25,
            left: 25,
            right: 25,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blueGrey,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }
}
