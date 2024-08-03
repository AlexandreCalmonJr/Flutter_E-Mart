import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/applogo_wigdet.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.07).heightBox,
              applogoWidget(),
              10.heightBox,
              "Login in to $appname".text.fontFamily(bold).white.size(18).make(),
              30.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint,title: email),
                  customTextField(hint: passwordHint,title: password),
                  TextButton(onPressed: (){}, child: forgetPass.text.make()),
                ]
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).make(),
            ],
            ),
        ),
        ),
    );
  }
}