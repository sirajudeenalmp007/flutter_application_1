import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Drawer2(),
  ));
}

class Drawer2 extends StatelessWidget {
  var color1 = [Colors.orangeAccent, Colors.redAccent];
  Drawer2({super.key});

  @override
  Widget build(BuildContext context) => Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
          ),
          drawer: Drawer(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: color1)),
              child: ListView(
                children: [
                  SizedBox(width: 150, height: 50),
                  ListTile(
                    title: Text("Sunder Pichai"),
                    subtitle: Text("CEO of Google"),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "data:image/jpeg;base64,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")),
                  ),
                  SizedBox(width: 150, height: 50),
                  ListTile(
                      title: Text("Dashboard"), leading: Icon(Icons.dashboard)),
                  ListTile(
                      title: Text("Lead"),
                      leading: Icon(Icons.connect_without_contact_outlined)),
                  ListTile(
                      title: Text("Clients"),
                      leading: Icon(Icons.people_outline_outlined)),
                  ListTile(
                      title: Text("Projects"),
                      leading: Icon(Icons.rocket_launch)),
                  ListTile(
                      title: Text("Patients"),
                      leading: Icon(Icons.perm_contact_cal_outlined)),
                  ListTile(
                      title: Text("Subscription"),
                      leading: Icon(Icons.subscriptions_outlined)),
                  ListTile(
                      title: Text("Payments"),
                      leading: Icon(Icons.payments_outlined)),
                  ListTile(title: Text("Users"), leading: Icon(Icons.person)),
                  ListTile(
                      title: Text("Library"), leading: Icon(Icons.library_add)),
                  //SizedBox(width: 10, height: 50),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text("Logout"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
