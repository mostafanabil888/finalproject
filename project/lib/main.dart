// ignore_for_file: unused_import
//
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:project/Pages/splash.dart';
import 'Pages/login.dart';
import 'Pages/result.dart';
import 'Pages/scanning.dart';
import 'Pages/signup.dart';
import 'Pages/welcome.dart';
import 'Pages/welpage.dart';
import 'Pages/start.dart';
import 'Pages/registercatogry.dart';
import 'Pages/newpassword.dart';
import 'Pages/choosecatogry.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        // register
        "/home": (context) =>  start(),
        "/newpassword": (context) =>  NewPassword(),
        "/register": (context) =>  Welcome(),
        "/RegisterCatogry": (context) =>  RegisterCatogry(),
        "/login": (context) => const Login(),
        "/ChooseCatogry": (context) => const one_screen(),
        "/signup": (context) => Signup(),
        "/scanning": (context) => const Sacnning(),
        "/result": (context) => const Result(),
        "/": (context) => const Splash(),
        "/saad2": (context) => const OnBoardingpage(),
      },
    );
  }
}
