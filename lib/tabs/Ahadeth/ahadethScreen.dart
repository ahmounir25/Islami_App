import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_me/tabs/Ahadeth/ahadethItem.dart';
import 'package:islami_me/tabs/Quran/suraNameItem.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ahadethScreen extends StatefulWidget {
  @override
  State<ahadethScreen> createState() => _ahadethScreenState();
}

class _ahadethScreenState extends State<ahadethScreen> {
  List<hadethContent> finalAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (finalAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Image.asset(
          'assets/images/logo_ahadeth.png',
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    border: Border.all(
                      color: myThemeData.goldColor,
                    )),
                child: Text(
                  AppLocalizations.of(context)!.ahadeth,
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: finalAhadeth.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: myThemeData.goldColor,
                  ),
                )
              : ListView.separated(
                  itemBuilder: (context, index) => ahadethItem(
                      finalAhadeth[index].title, finalAhadeth[index].content),
                  separatorBuilder: (context, index) => Divider(
                        color: myThemeData.goldColor,
                        endIndent: 20,
                        indent: 20,
                        thickness: 1,
                      ),
                  itemCount: finalAhadeth.length),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String data = await rootBundle.loadString('assets/suratxt/ahadeth.txt');
    List<String> allAhadeth = data.split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      String hadeth = allAhadeth[i];
      // print(hadeth);
      // print('----------------------------');
      List<String> hadethLines = hadeth.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      hadethContent hadethObj = hadethContent(title, hadethLines);
      finalAhadeth.add(hadethObj);
      setState(() {});
    }
  }
}

class hadethContent {
  String title;
  List<String> content;

  hadethContent(this.title, this.content);
}
