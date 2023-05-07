import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:project/Pages/app.style.dart';
import 'package:project/Pages/size_configus.dart';

import 'onboardingDATA.dart';
// get start page
class OnBoardingpage extends StatefulWidget {
  const OnBoardingpage({Key? key}) : super(key: key);

  @override
  State<OnBoardingpage> createState() => _OnBoardingpageState();
}

class _OnBoardingpageState extends State<OnBoardingpage> {
  int currentpage = 0;
  PageController _pagecontroller = PageController(initialPage: 0);
  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentpage == index ? kPrimaryColor : kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Color(0xFFfbfeff),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 9,
              child: PageView.builder(
                  controller: _pagecontroller,
                  onPageChanged: (value) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                  itemCount: onboardingContents.length,
                  itemBuilder: (Context, index) => Column(
                        children: [
                          SizedBox(
                            height: sizeV * 5,
                          ),
                          Text(
                            onboardingContents[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 33),
                          ),
                          SizedBox(
                            height: sizeV * 5,
                          ),
                          Container(
                            height: sizeV * 50,
                            child: Image.asset(onboardingContents[index].image,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ))),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                currentpage == onboardingContents.length - 1
                    ? MyTextButton(
                        ButtonName: 'Get Start',

                        bgcolor: Color(0xFF008089),
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },

                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OnBoardNavBtn(
                            name: 'Skip',
                            onPressed: () { Navigator.pushNamed(context, "/home");},
                          ),
                          Row(
                            children: List.generate(
                              onboardingContents.length,
                              (index) => dotIndicator(index),
                            ),
                          ),
                          OnBoardNavBtn(
                              name: 'Next',
                              onPressed: (() {
                                _pagecontroller.nextPage(
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.easeInOut);
                              }))
                        ],
                      ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.ButtonName,
    required this.onPressed,
    required this.bgcolor,
  }) : super(key: key);
  final String ButtonName;
  final VoidCallback onPressed;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: SizeConfig.blockSizeH! * 15.5,
        width: SizeConfig.blockSizeH! * 100,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            ButtonName,
            style: kBodyText1,
          ),
          style: TextButton.styleFrom(backgroundColor: bgcolor),
        ),
      ),
    );
  }
}

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: kBodyText1,
          ),
        ));
  }
}
