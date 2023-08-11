import 'package:flutter/material.dart';
import 'package:flutter_application_2/grid/gridview1.dart';

void main() {
  runApp(MaterialApp(
    home: gridview2(),
  ));
}

class gridview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gridview builder'),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('item'), Icon(Icons.ac_unit)],
                ),
              ),
            );
          }),
    );
  }
}
