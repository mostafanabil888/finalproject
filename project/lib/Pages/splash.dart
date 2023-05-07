// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables
//begin animation window
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';


import 'package:project/Pages/welpage.dart';
import 'start.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return AnimatedSplashScreen(
      splash: 'assets/images/eye.jpg',
    
      nextScreen:  start(),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 250,
      animationDuration: Duration(seconds:3),
    
    );
  }
  
}
