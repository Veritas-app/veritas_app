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
            Row(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(151, 151, 151, 0.8)
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(27),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(

                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
