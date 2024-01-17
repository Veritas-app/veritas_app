import 'package:flutter/material.dart';

class ChatBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
          children: [
            SizedBox(
              height: 103,
              width: 193,
              child: Container(
                
              )
              
            )
          ],



          
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