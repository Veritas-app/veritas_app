import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';

class firstpg extends StatelessWidget {
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
                    )
                ),
              ),
              SvgPicture.asset(
                "assets/images/judge.svg",
                height: 300, width: 300,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text("Hello, Welcome !",
                  style: TextStyle(
                    fontFamily: "Jockey One",
                    fontSize: 36.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    children: <TextSpan>[
                      TextSpan(text:"JUSTICE "),
                      TextSpan(text:"DELAYED ",style: TextStyle(fontWeight: FontWeight.bold,
                          color:Colors.amberAccent)),
                      TextSpan(text:"IS\n   JUSTICE "),
                      TextSpan(text:"DENIED!",style: TextStyle(fontWeight: FontWeight.bold,
                          color:Colors.amberAccent)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical:10.0,horizontal: 60.0)),
                  ),
                  child: Text(
                    "I'm a ADVOCATE",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/clientfeature");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.black87),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical:10.0,horizontal: 46.5)),
                  ),
                  child: Text(
                    "I need an ADVOCATE",
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