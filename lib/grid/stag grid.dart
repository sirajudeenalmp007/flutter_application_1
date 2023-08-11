import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stag_grid(),
  ));
}

class stag_grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered GridView'),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.brown,
                  child: Icon(Icons.cabin),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.teal,
                  child: const Center(child: Icon(Icons.hail_rounded)),
                )),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 4,
              child: Container(
                color: CupertinoColors.activeOrange,
                child: const Center(
                  child: Icon(Icons.gamepad),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
