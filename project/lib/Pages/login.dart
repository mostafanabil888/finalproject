// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  bool pass = true;
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
                child: Align(
                widthFactor: double.infinity,
                heightFactor: double.infinity,
                alignment: Alignment.center,
                child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        reverse: true,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4555b6)
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
                                  labelText: "Enter Email",
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
                              // width: 266,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(

                                decoration: InputDecoration(
                                  labelText: "Password",
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
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              // ignore: prefer_const_literals_to_create_immutables
                              children: [

                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/newpassword");
                                  },
                                  child: Text(
                                    "Forget Password",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF333238)),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/ChooseCatogry");
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
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFFdff6ff)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Do not have an account? ",
                                  style: TextStyle(color: Color(0xFF3b3c4a)),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/signup");
                                  },
                                  child: Text(
                                    " Sign up",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF333238)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
    )
                ),
              ),
            ),
          )),
    );
  }
}


