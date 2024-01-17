import 'package:flutter/material.dart';

class chatsection extends StatefulWidget {
  // const chatsection({super.key});

  @override
  State<chatsection> createState() => _chatsectionState();
}

class _chatsectionState extends State<chatsection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.blueAccent[100],
              title: const Text("Chat bot"),
            ),

          ],
        ),
      ),
    );
  }
}
