import 'package:flutter/material.dart';

class signInDetails extends StatelessWidget {
  const signInDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        body: Center(
          child: Text("Full Name"),
        )
       
      )
    );
  }
}   