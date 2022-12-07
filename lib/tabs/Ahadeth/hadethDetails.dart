import 'package:flutter/material.dart';
import 'package:islami_me/provider/myProvider.dart';
import 'package:islami_me/tabs/Ahadeth/ahadethScreen.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:provider/provider.dart';

class hadethDetails extends StatefulWidget {
  static const String routeName = 'hadeth';

  @override
  State<hadethDetails> createState() => _hadethDetailsState();
}

class _hadethDetailsState extends State<hadethDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as hadethContent;
    var provider = Provider.of<myProvider>(context);
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
            args.title,
            style: Theme.of(context).textTheme.headline1,
          )),
          body: Container(
            // color:Colors.grey.shade300.withOpacity(.5),
            padding: EdgeInsetsDirectional.all(40),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    '${args.content[index]}',
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          letterSpacing: 1,
                        ),
                    textAlign: TextAlign.center,
                  );
                },
                // separatorBuilder: (context, index) =>
                //     Divider(thickness: 1, color: myThemeData.goldColor),
                itemCount: args.content.length),
          ),
        )
      ],
    );
  }
}
