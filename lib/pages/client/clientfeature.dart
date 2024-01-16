import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class clfeat extends StatefulWidget {
  @override
  State<clfeat> createState() => _clfeatState();
}

class _clfeatState extends State<clfeat> {
  int counter = 1;

  Map feattext = {
    1: "EASILY REACH ADVOCATES...",
    2: "CLEAR YOUR DOUBTS RELATED TO YOUR CASE...",
    3: "PRIVACY REGARDING THE CASE",
    4: "GET TOP LAWYERS NEAR YOUR AREA",
  };
  Map featimg = {
    1: "assets/images/Business deal.svg",
    2: "assets/images/Chat bot-pana 1.svg",
    3: "",
    4: "",
  };

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
                  featimg[counter],
                  height: 400, width: 400,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),

                  child: Text(feattext[counter],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700, // NOTE THE FONT WEIGHT OF
                      // ######## THIS TEXT IT DOESNT LOOK GOOD
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:60),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });;
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    child: Text(
                      ">>",
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
        )
    );
  }
}

// class featurepage {
//
//   String text;
//   Svg img;
//
//   featurepage(String text, Svg img){
//     this.text = text;
//     this.img = img;
//   }
//
// }