import 'package:flutter/material.dart';
import 'package:islami_me/tabs/Ahadeth/ahadethScreen.dart';
import 'package:islami_me/tabs/Ahadeth/hadethDetails.dart';
import 'package:islami_me/tabs/Quran/suraDetails.dart';

class ahadethItem extends StatelessWidget {
  String name;
  List<String> content;
  ahadethItem(this.name,this.content);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, hadethDetails.routeName,arguments:hadethContent(name,content));
      },
      child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.headline2,
          )),
    );
  }


}


