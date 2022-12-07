import 'package:flutter/material.dart';
import 'package:islami_me/provider/myProvider.dart';
import 'package:islami_me/tabs/setting/settingScreen.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:islami_me/tabs/Ahadeth/ahadethScreen.dart';
import 'package:islami_me/tabs/Quran/quranScreen.dart';
import 'package:islami_me/tabs/Radio/radioScreen.dart';
import 'package:islami_me/tabs/sebha/sebhaScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currIndex = 0;
  List<Widget> tabsList = [
    radioScreen(),
    sebhaScreen(),
    ahadethScreen(),
    quranScreen(),
    settingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<myProvider>(context);
    return Stack(
      children: [
        Image.asset(
            provider.theme == ThemeMode.light
                ? 'assets/images/back_ground.png'
                : 'assets/images/background_dark.png',
            width: double.infinity,
            fit: BoxFit.fitWidth),
        Scaffold(
          appBar: AppBar(
              title: Text(
            AppLocalizations.of(context)!.islami,
            style: Theme.of(context).textTheme.headline1,
          )),
          body: tabsList[currIndex],
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              currentIndex: currIndex,
              onTap: (value) {
                currIndex = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radiobottombar,
                    backgroundColor: provider.theme == ThemeMode.light
                        ? myThemeData.goldColor
                        : myThemeData.primaryDarkcolor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: AppLocalizations.of(context)!.sebhabottombar,
                    backgroundColor: provider.theme == ThemeMode.light
                        ? myThemeData.goldColor
                        : myThemeData.primaryDarkcolor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                    label: AppLocalizations.of(context)!.ahadethbottombar,
                    backgroundColor: provider.theme == ThemeMode.light
                        ? myThemeData.goldColor
                        : myThemeData.primaryDarkcolor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/moshaf.png')),
                    label: AppLocalizations.of(context)!.quranbottombar,
                    backgroundColor: provider.theme == ThemeMode.light
                        ? myThemeData.goldColor
                        : myThemeData.primaryDarkcolor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.setting,
                    backgroundColor: provider.theme == ThemeMode.light
                        ? myThemeData.goldColor
                        : myThemeData.primaryDarkcolor),
                // BottomNavigationBarItem(icon: icon),
              ]),
        )
      ],
      //test
    );
  }
}
