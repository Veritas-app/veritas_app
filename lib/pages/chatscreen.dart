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
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        title: const Text("Chat bot"),
        // elevation: 60,

      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: 55,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[100],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(new Radius.circular(25.7))
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                              Icons.emoji_emotions_outlined
                          ) ,
                          hintText: 'Message',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.blueAccent[100],
                      shape: CircleBorder(),
                      child: Icon(Icons.send, color: Colors.black, size: 35,),
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
