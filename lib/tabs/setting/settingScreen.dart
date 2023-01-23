import 'package:flutter/material.dart';
import 'package:islami_me/provider/myProvider.dart';
import 'package:islami_me/tabs/setting/show_Lang_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_me/tabs/setting/themeSheet.dart';
import 'package:provider/provider.dart';

class settingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<myProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLanguageSheet(context);
            },
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(provider.language == 'en' ? 'English' : 'Arabic')),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => showThemeSheet(context),
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child:
                    Text(provider.theme == ThemeMode.light ? 'Light' : 'Dark')),
          )
        ],
      ),
    );
  }

  void showLanguageSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return langSheet();
        });
  }

  void showThemeSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) => themeSheet());
  }
}
