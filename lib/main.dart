import 'package:flutter/material.dart';
import 'package:islami_me/Home/HomeScreen.dart';
import 'package:islami_me/provider/myProvider.dart';
import 'package:islami_me/tabs/Ahadeth/hadethDetails.dart';
import 'package:islami_me/tabs/Quran/suraDetails.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => myProvider(),
    child: myApplication(),
  ));
}

class myApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<myProvider>(context);
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        suraDetails.routeName: (context) => suraDetails(),
        hadethDetails.routeName: (context) => hadethDetails(),
      },
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      theme: myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,
      themeMode: provider.theme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale(provider.language), //default language
    );
  }
}
