import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: home(),
  ));
}
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.black,
        title: Text("instagram")
        
      ),
      body:
      Column(
        children: [
          CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
          ),
        ],
      ),
      
      
      
      

      );
  }
}