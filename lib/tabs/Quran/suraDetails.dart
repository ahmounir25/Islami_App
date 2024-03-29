import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_me/provider/myProvider.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:provider/provider.dart';

import 'suraNameItem.dart';

class suraDetails extends StatefulWidget {
  static const String routeName = 'suraDetails';

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String> versies = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraNameItemArgs;
    var provider = Provider.of<myProvider>(context);
    if (versies.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          provider.theme == ThemeMode.light
              ? 'assets/images/back_ground.png'
              : 'assets/images/background_dark.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
              title: Text(
            args.name,
            style: Theme.of(context).textTheme.headline1,
          )),
          body: versies.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: myThemeData.goldColor,
                ))
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '${versies[index]} (${index + 1})',
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                              letterSpacing: 1,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      Divider(thickness: 1, color: myThemeData.goldColor),
                  itemCount: versies.length),
        )
      ],
    );
  }

  void loadFile(int index) async {
    String data =
        await rootBundle.loadString('assets/suratxt/${index + 1}.txt');
    List<String> lines = data.split('\n');
    versies = lines;
    setState(() {});
  }
}
