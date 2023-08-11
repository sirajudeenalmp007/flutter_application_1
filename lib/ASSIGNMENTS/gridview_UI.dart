import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UI2(),
  ));
}

class UI2 extends StatelessWidget {
  var image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTHd--s4mM8xej9CjAe3xpoBjq6ShPbjuS54cu8xMm6p-hxV31K3X3ppO6YSs-ajo34OU&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt8SR5rYxRGnR2tqY7kiJVTskU5rLx3BHe8w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI88PncGAMO5YYGmNhAiBxn2uKzCd8gI3NKw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREOgwuPCplEMlrPovcm1P_06y00289yYHtoUTDlv1WI3jf80Sa9V6Hh4ts2kGRKSK0M9s&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJfJrMd3X9B-bD4rY-ajNSRlz3AwvVXncqqA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOKJk5Oz3bRDV-YS4cNzeQq8TzcxCYZqMKeg&usqp=CAU'
  ];

  var name = [
    'Vagabond sack',
    'Stella',
    'Whitney belt',
    'Garden strand',
    'Struct earings',
    'Varsity socks'
  ];

  var price = [
    '\$120.00',
    '\$58.00',
    '\$35.00',
    '\$98.00',
    '\$34.00',
    '\$12.00'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SHRINE'),
          leading: Icon(Icons.more_vert_rounded),
          actions: [Icon(Icons.search), Icon(Icons.settings)],
        ),
        body: GridView.custom(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            childrenDelegate: SliverChildListDelegate(List.generate(
                6,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 300,
                              width: 420,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: NetworkImage(image[index])))),
                          Text(name[index]),
                          Text(price[index])
                        ],
                      ),
                    )))));
  }
}
