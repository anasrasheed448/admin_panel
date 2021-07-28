import 'package:adminpanel/constants/controllers.dart';
import 'package:adminpanel/helpers/responsiveness.dart';
import 'package:adminpanel/pages/overview/widgets/cards_large.dart';
import 'package:adminpanel/pages/overview/widgets/cards_medium.dart';
import 'package:adminpanel/pages/overview/widgets/cards_small.dart';
// import '';
import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomScreen(context))
                OverviewCardsMediumScreen()
              else
                OverViewCardsLargeScreen()
            else
              OverviewCardsSmallScreen()
          ],
        ))
      ],
    );
  }
}
