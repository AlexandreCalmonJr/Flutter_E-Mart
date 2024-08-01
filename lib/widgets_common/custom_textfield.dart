import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';


Widget customTextField() {
  return Column(
    children: [
      email.text.color(redColor).fontFamily(semibold).size(22).make(),
      5.heightBox,
      TextFormField(
        decoration: const InputDecoration(
        hintStyle: TextStyle(
          fontFamily: semibold,
          fontSize: 18,
          color: textfieldGrey,
        ),
          hintText: emailHint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor, width: 2.0),
          )
        ),
      )
    ],
  );
}
