import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: ListViewSeperated()));
}

class ListViewSeperated extends StatelessWidget {
  var month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  ListViewSeperated({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 50,
              child: Card(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: Text(month[index]),
                    )),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return const Card(
                color: Colors.red,
                child: Text("Advertisement"),
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: 30),
    );
  }
}
