import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class clfeat extends StatefulWidget {
  @override
  State<clfeat> createState() => _clfeatState();
}

class _clfeatState extends State<clfeat> {
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
                  "assets/images/Business deal.svg",
                  height: 400, width: 400,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                ),
                Container(
                  padding: EdgeInsets.all(20),

                  child: Text("EASILY REACH ADVOCATES...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 40.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700, // NOTE THE FONT WEIGHT OF
                      // ######## THIS TEXT IT DOESNT LOOK GOOD
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:60),
                  child: ElevatedButton(
                    onPressed: () {},
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

