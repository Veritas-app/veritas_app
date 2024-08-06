import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:veritas/pages/lawyer/lawyerdashboard.dart';


class signInDetails_lawyer extends StatefulWidget {

  @override
  State<signInDetails_lawyer> createState() => _signInDetailsState();
}

class _signInDetailsState extends State<signInDetails_lawyer> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phonenoController = TextEditingController();
  TextEditingController _barnoController = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  String? _selectedOption;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phonenoController.dispose();
    _barnoController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
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
              height: 10,
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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: TextField(
                controller: _usernameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: _emailController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Email ID",
                  hintStyle: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: _passwordController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: _phonenoController,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  hintText: "Phone No.",
                  hintStyle: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: _barnoController,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  hintText: "BAR ID No.",
                  hintStyle: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10), // Left and right padding
              child: Container(
                height: 65,
                width: 353,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10), // Spacing
                    Text(
                      'Type of Advocate: ',
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        color: Color.fromRGBO(151, 151, 151, 0.8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            icon: Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(151, 151, 151, 0.8)), // Custom dropdown icon
                            style: TextStyle(
                              fontFamily: "Inter",
                              color: Color.fromRGBO(151, 151, 151, 0.8),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            value: _selectedOption,
                            dropdownColor: Colors.white, // Dropdown box color
                            items: <String>[
                              'Civil',
                              'Labor',
                              'Family',
                              'Cooperative',
                              'Consumer forum',
                              'Other',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    value,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Verify Phone No.",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(44, 44, 44, 1,)),
                ),
                onPressed: () async{
                  // otpDialog();
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    verificationCompleted: (PhoneAuthCredential credential){},
                    verificationFailed: (FirebaseAuthException ex){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${ex.message}")));
                    },
                    codeSent: (String verificationid, int? resendtoken){
                      otpDialog(verificationid);
                    },
                    codeAutoRetrievalTimeout: (String verificationid){},
                    phoneNumber: _phonenoController.text.toString(),
                  );
                }
            ),
            SizedBox(height: 10,),
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
                backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(44, 44, 44, 1,)),
              ),
              onPressed: () async{
                try{
                  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _emailController.text.trim(),
                    password: _passwordController.text.trim(),
                  );
                  userCredential.user?.updateDisplayName(_usernameController.text.trim());
                  FirebaseFirestore.instance.collection("lawyer").doc(userCredential.user!.uid).set({
                    "uid": userCredential.user!.uid,
                    "username":_usernameController.text.trim(),
                    "email": _emailController.text.trim(),
                    "phoneno": _phonenoController.text.trim(),
                    "bar-id" : _barnoController.text.trim(),
                    "lawyerType": _selectedOption,
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: const Text("logged in"))
                  );
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => lawyerdashboard()),
                        (Route<dynamic> route) => route.isFirst,
                  );
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
  Future otpDialog(String verificationid) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title: Text("OTP Verificatiom"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Phone No. : ${_phonenoController.text}"),
            TextField(
              autofocus: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Enter OTP"
              ),
              controller: _otpController,
            ),
          ],
        ),
        actions: [
          TextButton(
            child: Text("SUBMIT"),
            onPressed: () async{
              // Navigator.pop(context);
              try{
                PhoneAuthCredential credential = await PhoneAuthProvider.credential(
                    verificationId: verificationid,
                    smsCode: _otpController.text.toString());
                FirebaseAuth.instance.signInWithCredential(credential).then(
                        (value) => {
                      Navigator.pop(context),
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: const Text("verified"))
                      )
                    });
              } on FirebaseAuthException catch(e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e.message}")));
              }
            },
          )
        ],
      )
  );
}

