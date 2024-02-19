import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:veritas/messages.dart';

class chatsection extends StatefulWidget {
  @override
  State<chatsection> createState() => _chatsectionState();
}

class _chatsectionState extends State<chatsection> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  TextEditingController _message = TextEditingController();

  String getChatRoomId() {
    final String currentUserId = _firebaseAuth.currentUser!.uid;
    List<String> ids = [currentUserId, "chatbot"];
    ids.sort();
    return ids.join("_");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // padding: const EdgeInsets.only(top:20),
        color: const Color.fromRGBO(29, 29, 29, 1), // Set the color to match the "CASE STATUS" card
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_sharp
                  , color: Colors.white),
              label: 'My Files',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment_sharp, color: Colors.white),
              label: 'Payments',
            ),
          ],
          backgroundColor: Colors.transparent, // Set to transparent
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          // Add any additional properties you want for the BottomNavigationBar,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        title: const Text("Chat Bot"),
        // elevation: 60,

      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            StreamBuilder<QuerySnapshot>(
                stream:_db.collection("chat_room").doc(getChatRoomId()).collection("message").orderBy('timestamp', descending: true).snapshots(),
                builder: (context,snapShot){
                  List<Widget> messagesent = [];
                  if (snapShot.hasData){
                    final messages = snapShot.data?.docs.reversed.toList();
                    for (var i in messages!){
                      if (i["senderId"]== _firebaseAuth.currentUser!.uid) {
                        messagesent.add(Align(
                          alignment: Alignment.topRight ,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent[100],
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(new Radius.circular(10))
                              ),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent[200],
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(new Radius.circular(10))
                                ),
                                child: Text(
                                  i["message"],
                                ),
                              ),
                            ),
                          ),
                        ),
                        );
                      } else{
                        messagesent.add(
                          Align(
                            alignment: Alignment.topLeft ,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[500],
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(new Radius.circular(10))
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[600],
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(new Radius.circular(10))
                                  ),
                                  child: Text(
                                    i["message"],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    }
                  }
                  return Expanded(
                    child: SingleChildScrollView(

                      child: Column(
                        children: messagesent,
                      ),
                    ),
                  );
                }),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: 55,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[100],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(new Radius.circular(25.7))
                      ),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        expands: true,
                        controller: _message,
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
                      onPressed: (){
                        final String currentUserId = _firebaseAuth.currentUser!.uid;
                        final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
                        final Timestamp timestamp = Timestamp.now();
                        if (_message.text.trim().isNotEmpty) {
                          Message newMessage = Message(
                              senderId: currentUserId,
                              senderEmail: currentUserEmail,
                              recieverId: "chatbot",
                              recieverEmail: "NaN",
                              message: _message.text.trim(),
                              timestamp: timestamp);
                          _db
                              .collection("chat_room")
                              .doc(getChatRoomId())
                              .collection("message")
                              .add(newMessage.toMap());
                          _message.clear();
                        }
                      },
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
