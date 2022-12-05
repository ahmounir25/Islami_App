import 'package:flutter/material.dart';
import 'package:islami_me/themes/myThemeData.dart';

class radioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 100, bottom: 50),
          child: Row(
            children: [
              Image.asset(
                'assets/images/radio_bg.png',
                width: 390,
              ),
            ],
          ),
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.headline1,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous),
                  iconSize: 45,
                  color: myThemeData.goldColor),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                  iconSize: 50,
                  color: myThemeData.goldColor),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next),
                  iconSize: 45,
                  color: myThemeData.goldColor),
            ],
          ),
        )
      ],
    );
  }
}
