import 'package:flutter/material.dart';
import './size_configus.dart';

Color kPrimaryColor = Color(0xffe0e6e6);
Color kSecondaryColor = Color(0xff573353);

final kTitle = TextStyle(
  fontFamily: 'myfont',
  fontSize: 40,
  color: kSecondaryColor,
);

final kBodyText1 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.bold,
);