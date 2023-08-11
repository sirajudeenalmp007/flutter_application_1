import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cake,
            size: 90,
            color: Colors.black,
          ),
          Text(
            'S T A I N N',
            style: TextStyle(
                fontSize: 50,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
        ],
      )),
    );
  }
}
