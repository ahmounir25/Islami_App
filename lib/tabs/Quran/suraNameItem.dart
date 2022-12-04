import 'package:flutter/material.dart';

class suraNameItem extends StatelessWidget {
  String suraName ;

  suraNameItem(this.suraName);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(suraName,style:Theme.of(context).textTheme.headline2,));
  }
}
