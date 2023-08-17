import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomSheet(),
  ));
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom sheet withimage on tap'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () => showSheet(context),
          child: Image.asset(
              'assets/images1/img_787485_20d6c40e_1681663784435_sc (1).jpg'),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.message,
                    color: Colors.black,
                  ),
                  title: Text('message'),
                )
              ],
            ),
          );
        });
  }
}
