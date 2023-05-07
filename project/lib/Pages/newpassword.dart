// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          resizeToAvoidBottomInset: false,


          body: SafeArea(
            child: Scaffold(


              body: Container(

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/register.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        reverse: true,
                        child: Column(

                          children: [


                            SizedBox(
                              height:230,
                            ),
                            Container(
                              child: Text(
                                "New Password",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4555b6)
                                ),
                              ),
                            ),
                            SizedBox(
                              height:25,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255,255,255,255),
                                borderRadius: BorderRadius.circular(66),

                              ),
                              width: 366,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(

                                decoration: InputDecoration(
                                  labelText: "Enter Password",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                        color: Color(0xFF555555)
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color(0xFF555555),
                                      width: 2.0,
                                    ),
                                  ),
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255,255,255,255),
                                borderRadius: BorderRadius.circular(66),

                              ),
                              width: 366,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(

                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                        color: Color(0xFF555555)
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color(0xFF555555),
                                      width: 2.0,
                                    ),
                                  ),
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),

                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/scanning");
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF4455b6)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: 77, vertical: 13)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(27))),
                              ),
                              child: Text(
                                "SEND",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFFdff6ff)),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Already have an account? ",
                                  style: TextStyle(color: Colors.white),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/scanning");
                                  },
                                  child: Text(
                                    " log in",
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
