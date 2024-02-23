import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class findcase extends StatefulWidget {
  @override
  State<findcase> createState() => _findcaseState();
}

class _findcaseState extends State<findcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        title: const Text("Find a Case"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('Registerted_Cases(non-assigned)')
                    .get()
                    .then((QuerySnapshot querySnapshot) {
                  querySnapshot.docs.forEach((doc) {
                    // print(doc["Cases"]["caseType"]);
                    Text("gfhffhfgghfgfhjfyvbjv");
                  });
                });
              },
              child: Text("hgfhjfg")),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("Registerted_Cases(non-assigned)")
                .snapshots(),
            builder: (context, snapshots) {
              return (snapshots.connectionState == ConnectionState.waiting)
                  ? Center(child: CircularProgressIndicator())
                  : Text("caseType");
            },
          ),
        ],
      )),
    );
  }
}
