import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridCustom(),
  ));
}

class GridCustom extends StatelessWidget {
  const GridCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Custom'),
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(
            List.generate(
                12,
                (index) => Center(
                      child: Column(
                        children: [
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTExtoLVhMIfPRj_8d5RQKF2qjwUbuYL2tZTg&usqp=CAU'),
                              ),
                            ),
                          ),
                          Text('item1'),
                          Text('\$300'),
                        ],
                      ),
                    )),
          )),
    );
  }
}
