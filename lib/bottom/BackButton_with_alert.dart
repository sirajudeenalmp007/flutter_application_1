import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExitAppAlert(),
  ));
}

class ExitAppAlert extends StatelessWidget {
  const ExitAppAlert({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('EXIT'),
              content: Text(' do u really want to exit'),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('yes')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('no')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('cancel')),
              ],
            );
          });
    }

    return WillPopScope(
        onWillPop: showAlert,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('exit from app'),
          ),
          body: Center(
            child: Text('press back button to exit'),
          ),
        ));
  }
}
