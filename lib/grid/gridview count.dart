import 'package:flutter/material.dart';
import 'package:flutter_application_2/grid/gridview2.dart';

void main() {
  runApp(MaterialApp(
    home: gridviewcount(),
  ));
}

class gridviewcount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview count'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            15,
            (index) => const Card(
                  child: Center(
                    child: Text('hello'),
                  ),
                )),
      ),
    );
  }
}
