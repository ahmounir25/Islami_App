import 'package:flutter/material.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sebhaScreen extends StatefulWidget {
  const sebhaScreen({Key? key}) : super(key: key);

  @override
  State<sebhaScreen> createState() => _sebhaScreenState();
}

class _sebhaScreenState extends State<sebhaScreen> {
  static int counter = 0;
  int i = 0;
  List<String> list = [
    'سبحان الله',
    'الحمدلله',
    'لا اله الا الله',
    'الله أكبر'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.asset('assets/images/sebha_head.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/sebha_body.png'),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                AppLocalizations.of(context)!.sebha,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: myThemeData.goldColor.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  '${counter}',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: myThemeData.goldColor,
                    fixedSize: Size(137, 51)),
                onPressed: () {
                  if (counter < 33) {
                    counter++;
                  } else {
                    counter = 1;
                    i++;
                  }
                  if (i == list.length) {
                    i = 0;
                  }
                  setState(() {});
                },
                child: Text(
                  list[i],
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        color: Colors.white,
                      ),
                )),
          ],
        ),
      ],
    );
  }
}
