import 'package:flutter/material.dart';
import 'package:islami_me/tabs/Quran/suraNameItem.dart';
import 'package:islami_me/themes/myThemeData.dart';

class quranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/logo.png',),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: myThemeData.goldColor,
            ),
            itemBuilder:(context, index) =>suraNameItem('البقرة') ,
          itemCount: 114,),
       )
      ],
    );
  }
}
