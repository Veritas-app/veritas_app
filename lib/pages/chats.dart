import 'package:flutter/material.dart';

class ChatBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(132, 189, 255, 1) ,
        title: Text("Chats",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Inter",
        ), 
        ),
      ),
      
      
      body: SafeArea(
        child: Column(

        ),
        
     
      ),
      
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: MyHomePage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }