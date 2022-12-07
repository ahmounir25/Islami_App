import 'package:flutter/material.dart';
import 'package:islami_me/provider/myProvider.dart';
import 'package:islami_me/themes/myThemeData.dart';
import 'package:provider/provider.dart';

class langSheet extends StatelessWidget {
  bool select = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<myProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage('en');
                Navigator.pop(context);
              },
              child: langItem(context, 'English', provider.language == 'en')),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
                Navigator.pop(context);
              },
              child: langItem(context, 'Arabic', provider.language == 'ar'))
        ],
      ),
    );
  }

  Widget langItem(BuildContext context, String item, bool isSelected) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary)),
          Icon(Icons.done,
              color: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary),
        ],
      );
}
