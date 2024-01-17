import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:veritas/pages/functions.dart";

class cldashboard extends StatefulWidget {
  // const cldashboard({super.key});

  @override
  State<cldashboard> createState() => _cldashboardState();
}

class _cldashboardState extends State<cldashboard> {
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
              // Func.veritastext(),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical:15,horizontal:16 ),
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(new Radius.circular(25.7))
                    ),
                    child: TextField(
                      // textInputAction: TextInputAction.next,
                      // controller: , #################### ADD CONTROLLER
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/images/man_4140037 1.svg")
                ],
              )

            ],
          ),
        )
      ),
    );
  }
}

