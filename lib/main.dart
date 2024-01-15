import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veritas/pages/splash.dart';
import 'package:veritas/pages/imlawyer.dart';
import 'package:veritas/pages/clientfeature.dart';

void main() => runApp(MaterialApp(
    // home: Splash(),
    initialRoute: "/first",
    routes: {
      "/": (context) => splash(),
      "/first": (context) => firstpg(),
      "/clientfeature": (context) => clfeat(),
  },
));

// class Splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }



