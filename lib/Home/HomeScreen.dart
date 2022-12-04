import 'package:flutter/material.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:islami_me/tabs/Ahadeth/ahadethScreen.dart';
import 'package:islami_me/tabs/Quran/quranScreen.dart';
import 'package:islami_me/tabs/Radio/radioScreen.dart';
import 'package:islami_me/tabs/sebha/sebhaScreen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currIndex=0;
  List<Widget> tabsList=[radioScreen(),sebhaScreen(),ahadethScreen(),quranScreen()];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/back_ground.png',
            width: double.infinity, fit: BoxFit.fitWidth),
        Scaffold(
          appBar: AppBar(
              title: Text(
            'islami',
            style: Theme.of(context).textTheme.headline1,
          )),
          body:tabsList[currIndex] ,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:currIndex ,
              onTap: (value) {
              currIndex=value;
                setState(() {

                });
              },
               items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio',backgroundColor: myThemeData.goldColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: 'Ahadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/moshaf.png')),
                label: 'Quran'),
            // BottomNavigationBarItem(icon: icon),
          ]),
        )
      ],
      //test
    );
  }
}
