// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class signInDetails extends StatefulWidget {
  @override
  State<signInDetails> createState() => _signInDetailsState();
}

class _signInDetailsState extends State<signInDetails> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phonenoController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phonenoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 189, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Veritas",
                      style: TextStyle(
                        fontFamily: "Jockey One",
                        fontSize: 32,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Create Account Now!",
                style: TextStyle(
                  fontFamily: "Jockey One",
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: TextField(
                  controller: _usernameController,
                  textInputAction: TextInputAction.next,
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: TextField(
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Email ID",
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: TextField(
                  controller: _passwordController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Password",
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
                child: TextField(
                  controller: _phonenoController,
                  textInputAction: TextInputAction.go,
                  decoration: InputDecoration(
                    hintText: "Phone No.",
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
              ),
              ElevatedButton(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(44, 44, 44, 1,)),
                ),
                onPressed: () async{
                  try{
                    UserCredential userCredential =
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                    );
                    FirebaseFirestore.instance.collection("user").doc(userCredential.user!.uid).set({
                      "uid": userCredential.user!.uid,
                      "username":_usernameController.text.trim(),
                      "email": _emailController.text.trim(),
                      "phoneno": _phonenoController.text.trim(),
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: const Text("logged in"))
                    );
                    Navigator.pushNamed(context, "/cldashboard");
                  } on FirebaseAuthException catch(e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e.message}")));
                    }
                    },
              ),
            ],
          ),
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