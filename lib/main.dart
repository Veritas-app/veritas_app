import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';

import 'package:veritas/pages/signupdetails.dart';
import 'package:veritas/pages/splash.dart';
import 'package:veritas/pages/imlawyer.dart';
import 'package:veritas/pages/client/clientfeature.dart';
import 'package:veritas/pages/loginpage.dart';
import 'package:veritas/pages/client/clientdashboard.dart';
import 'package:veritas/pages/chatscreen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:veritas/firebase_options.dart';


void main(){
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  return runApp(MaterialApp(
    // home: Splash(),
    initialRoute: "/login",
    routes: {
      "/": (context) => splash(),
      "/first": (context) => firstpg(),
      "/clientfeature": (context) => clfeat(),
      "/login": (context) => login(),
      "/cldashboard": (context) => cldashboard(),
      "/signupdetails": (context) => signInDetails(),
      "/chat": (context) => chatsection()
    },
  )
  );
}

// class Splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }

