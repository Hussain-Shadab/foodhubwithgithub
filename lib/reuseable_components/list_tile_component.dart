
import 'package:flutter/material.dart';
import 'package:food_hub/utils/constant_colors.dart';
class ListTileComponent extends StatelessWidget {
  final IconData icons;
  final String titleText;
  const ListTileComponent({
    super.key,
    required this.icons,
    required this.titleText


});

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
        iconColor: AppColors.titleColorOfTextFormField,
        textColor: AppColors.blackColor,
        child: ListTile(
          leading: Icon(icons),
          title: Text(titleText),
        ));
  }
}
