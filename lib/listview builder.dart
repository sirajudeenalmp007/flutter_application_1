import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_with_builder(),
  ));
}

class Listview_with_builder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Builder')),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          child: Center(
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3CQDEO83utmrNSsVt4QtJrmGqM2Dg0gej5g&usqp=CAU'),
          ),
        );
      }),
    );
  }
}
