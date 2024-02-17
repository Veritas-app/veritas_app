import 'package:flutter/material.dart';
import 'package:veritas/pages/signupdetails.dart';
import 'package:veritas/pages/splash.dart';
import 'package:veritas/pages/imlawyer.dart';
import 'package:veritas/pages/client/clientfeature.dart';
import 'package:veritas/pages/loginpage.dart';
import 'package:veritas/pages/client/clientdashboard.dart';
import 'package:veritas/pages/chatscreen.dart';

import "package:firebase_core/firebase_core.dart";
import 'package:veritas/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:veritas/pages/registercase.dart';
import "package:veritas/pages/lawyer/lawyerfeat.dart";

// import 'package:veritas/pages/.dart'

Future main() async{
  String a = "";
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAuth.instance.idTokenChanges().listen((User? user) {
    if (user == null) {
      a = "/first";
    } else {
      a = "/cldashboard";
    }
  });
  return runApp(MaterialApp(
    // home: Splash(),
    initialRoute: a,
    routes: {
      "/": (context) => splash(),
      "/first": (context) => firstpg(),
      "/lawyerfeat": (context) => lawfeat(),
      "/clientfeature": (context) => clfeat(),
      "/login": (context) => login(),
      "/cldashboard": (context) => cldashboard(),
      "/signupdetails": (context) => signInDetails(),
      "/reg":(context) => regcase(),
      "/chat": (context) => chatsection()
    },
  )
  );
}

