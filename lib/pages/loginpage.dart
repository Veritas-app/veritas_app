import 'package:flutter/material.dart';

class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool passwordVisible=false;

  @override
  void initstate(){
    this.initState();
    passwordVisible=true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent[100],
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text("VERITAS",
                  style: TextStyle(
                    fontFamily: "Jockey One",
                    fontSize: 32.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 50),
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
                  // style: TextStyle(
                  //   fontSize: 17,
                  //   color: Colors.black,
                  // ),
                  // onSubmitted: () {},
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
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                  ),
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    hintText: "Password",
                    // NEED TO ADD CUSTOM ICONS FOR PASSWORD SECTION #############
                    prefixIcon: Icon(
                      Icons.abc,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(
                              () {
                            passwordVisible = !passwordVisible;
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
                  onPressed: () {
                    // Navigator.pushNamed(context, "/clientfeature");
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
            ],
          ),
        ),
      ),
    );
  }
}
