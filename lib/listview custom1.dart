import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView_custom(),
  ));
}

class ListView_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Custom'),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(
              List.generate(10, (index) => const Text('HELLO')))),
    );
  }
}
