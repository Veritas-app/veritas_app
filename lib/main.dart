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
import 'package:veritas/pages/registercase.dart';

// import 'package:veritas/pages/.dart'

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  return runApp(MaterialApp(
    // home: Splash(),
    initialRoute: "/reg",
    routes: {
      "/": (context) => splash(),
      "/first": (context) => firstpg(),
      "/clientfeature": (context) => clfeat(),
      "/login": (context) => login(),
      "/cldashboard": (context) => cldashboard(),
      "/signupdetails": (context) => signInDetails(),
<<<<<<< HEAD
      // "/dashboard":((context) => dashboard()),
      "/reg":(context) => regcase(),
=======
      "/chat": (context) => chatsection()
>>>>>>> 5e5c2bd49104b053844b6a7c227f8568faba6453
    },
  )
  );
}

