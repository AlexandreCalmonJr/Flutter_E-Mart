<<<<<<< HEAD
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({width, height, icon, String? title, onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Image.asset(icon, width: 25,),10.heightBox,title!.text.fontFamily(semibold).color(darkFontGrey).make()],
  ).box.rounded.white.size(width, height).shadowSm.make();  
=======

import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons ({width, height, icon, title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icTodaysDeal, width: 26,),
      5.heightBox,
      todayDeal.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.size(width, height).make();
>>>>>>> 1b2a762412d84c05f646b7ad9222bc9f9ff70f9b
}