import 'package:flutter/material.dart';
import 'package:veritas/pages/client/clientdashboard.dart';
import 'package:veritas/functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:veritas/pages/lawyer/lawyerdashboard.dart';

class login extends StatefulWidget {
  final String usertype;

  login({Key? key, required this.usertype}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _passwordVisible=true;
  final _usernamecont = TextEditingController();
  final _userpasscont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueAccent[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Func.veritastext(),
              Container(
                padding: EdgeInsets.only(left: 20, top: 50),
                alignment: Alignment.centerLeft,
                child: Text("Login to continue",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0, top: 60.0, right:
                30.0),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(new Radius.circular(25.7))
                ),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  controller: _usernamecont,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.account_box_outlined),
                    hintText: 'Username',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0),
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(new Radius.circular(25.7)),
                ),
                child: TextField(
                  controller: _userpasscont,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black
                  ),
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    hintText: "Password",
                    // NEED TO ADD CUSTOM ICONS FOR PASSWORD SECTION #############
                    prefixIcon: Icon(
                      Icons.abc,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(
                              () {
                            _passwordVisible = !_passwordVisible;
                          },
                        );
                      },
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:50),
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      if (widget.usertype == "client"){
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _usernamecont.text.trim(),
                          password: _userpasscont.text.trim(),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: const Text("logged in "))
                        );
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => cldashboard()),
                              (Route<dynamic> route) => route.isFirst,
                        );
                      }else if (widget.usertype == "lawyer") {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _usernamecont.text.trim(),
                          password: _userpasscont.text.trim(),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: const Text("logged in "))
                        );
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => lawyerdashboard()),
                              (Route<dynamic> route) => route.isFirst,
                        );
                      }
                    } on FirebaseAuthException catch(e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${e.message}"))
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.black87),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical:12.0,horizontal: 137)),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top:10),
                  child: TextButton(
                      onPressed : () {
                        if (widget.usertype == "client") {
                          Navigator.pushNamed(context, "/signupdetails_client");
                        } else if (widget.usertype == "lawyer"){
                          Navigator.pushNamed(context, "/signupdetails_lawyer");
                        }
                      },
                      child: Text("New here!! SignUp"),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
