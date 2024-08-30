import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/home_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        color: lightGrey,
        width: context.screenWidth,
        height: context.safePercentHeight,
        child: SafeArea(
          child: Column(children: [
            Container(
                alignment: Alignment.center,
                height: 60,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchanything,
                    hintStyle: TextStyle(color: textfieldGrey),
                  ),
                )),
//swiper brands
            VxSwiper.builder(
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: slidersList.length,
                itemBuilder: (context, index) {
                  return Container(
                      child: Image.asset(
                    slidersList[index],
                    fit: BoxFit.fill,
                  )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make());
                }),
                10.heightBox,
                // deal buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(2, (index) => homeButtons(
                    height: 10,
                    width: 10,
                    icon: index == 0 ? icTodaysDeal : icFlashDeal,
                    title: index == 0 ? todayDeal : flashsale
                  )),
                )

          ]),
        ));
  }
}
