import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LotAnim(),
  ));
}

class LotAnim extends StatelessWidget {
  const LotAnim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
      ),
      body: ListView(
        children: [
          Lottie.asset("assets/anim1/animation_ll3hzuoa.json"),
        ],
      ),
    );
  }
}
