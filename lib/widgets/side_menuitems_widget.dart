import 'package:adminpanel/helpers/responsiveness.dart';
import 'package:adminpanel/widgets/horizontal_menu_item.dart';
import 'package:adminpanel/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    return HorizontalMenuItems(itemName: itemName, onTap: onTap);
  }
}
