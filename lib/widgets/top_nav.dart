import 'package:adminpanel/constants/style.dart';
import 'package:adminpanel/helpers/responsiveness.dart';
import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          !ResponsiveWidget.isSmallScreen(context)
              ? Visibility(
                  child: CustomText(
                    text: "Dash",
                    color: lightGrey,
                    size: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Container(),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(Icons.settings),
            color: dark.withOpacity(.7),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          SizedBox(width: 24),
          if (!ResponsiveWidget.isSmallScreen(context))
            CustomText(
              text: "Anas Rasheed",
              color: lightGrey,
            ),
          SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
      // backgroundColor: Colors.white,
    );
