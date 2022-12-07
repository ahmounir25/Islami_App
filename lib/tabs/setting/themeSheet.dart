import 'package:flutter/material.dart';
import 'package:islami_me/provider/myProvider.dart';
import 'package:provider/provider.dart';

class themeSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<myProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: themeItem(
                  context, 'Light', provider.theme == ThemeMode.light)),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child:
                  themeItem(context, 'Dark', provider.theme == ThemeMode.dark)),
        ],
      ),
    );
  }

  Widget themeItem(BuildContext context, String item, bool isSelected) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary)),
          Icon(
            Icons.done,
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary,
          )
        ],
      );
}
