import 'package:adminpanel/constants/controllers.dart';
import 'package:adminpanel/constants/style.dart';
import 'package:adminpanel/helpers/responsiveness.dart';
import 'package:adminpanel/routings/routes.dart';
import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:adminpanel/widgets/side_menuitems_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  color: lightGrey.withOpacity(.1),
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuList
                .map((itemName) => SideMenuItem(
                    itemName: itemName == AuthenticationPageRoute
                        ? "Logout"
                        : itemName,
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {
                        // ignore: todo
                        // TODO ::  go to authentication
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                        navigationController.navigateTo(itemName);
                      }
                    }))
                .toList(),
          ),
        ],
      ),
    );
  }
}
