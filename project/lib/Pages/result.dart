// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "The result..",
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'myfont',
                      ),
                    ),

                     // Image.asset("assets/images/scan.png", height: 250),
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  child: Image.asset(
                    "assets/images/الحافة الاعلى يسار.png",
                    width: 200,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
