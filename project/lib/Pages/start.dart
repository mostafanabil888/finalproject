import 'package:flutter/material.dart';
// import 'package:get_started_finance/styles/button.dart';
// import 'package:get_started_finance/styles/color.dart';
// import 'package:get_started_finance/styles/typography.dart';

class start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/getstartback.jpg"),
            fit: BoxFit.fill,
          ),
        ),

        child: Align(
          widthFactor: double.infinity,
          heightFactor: double.infinity,
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
        Container(

                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0,horizontal: 5),
                  child: Column(
                    children: [
                      Text(
                        'Check on yourself everywhere',
                        style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Find out with us if you have diabetic or not, whenever you are',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/RegisterCatogry");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color(0xFF4555b6)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 150, vertical: 13)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "Get Start",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}