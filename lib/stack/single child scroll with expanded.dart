import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: storyReview(),
  ));
}

class storyReview extends StatelessWidget {
  const storyReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('single'),
      ),
      body: Column(
        children: [
          Text('One Piece',
              style: GoogleFonts.creepster(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.teal)),
          Expanded(
            child: SingleChildScrollView(
              child: const Text(
                  'The story follows the adventures of Monkey D. Luffy and his crew, the Straw Hat Pirates, where he explores the Grand Line in search of the mythical treasure known as the "One Piece" in order to become the next King of the Pirates.'),
            ),
          ),
        ],
      ),
    );
  }
}
