import 'package:flutter/material.dart';
import 'package:islami_me/tabs/Quran/suraDetails.dart';

class suraNameItem extends StatelessWidget {
  String suraName;
  int index;
  suraNameItem(this.suraName,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, suraDetails.routeName,
            arguments: suraNameItemArgs(suraName,index));
      },
      child: Center(
          child: Text(
        suraName,
        style: Theme.of(context).textTheme.headline2,
      )),
    );
  }
}

class suraNameItemArgs {
  String name;
  int index;
  suraNameItemArgs(this.name, this.index);
}
