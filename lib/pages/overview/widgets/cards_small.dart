import 'package:adminpanel/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
        height: 400,
        child: Column(
          children: [
            InfoCardSmall(
              title: "Rides In progress",
              value: "10",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              height: _width / 64,
            ),
            InfoCardSmall(
              title: "Cancelled Orders",
              value: "10",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              height: _width / 64,
            ),
            InfoCardSmall(
              title: "Packages Delivered",
              value: "10",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              height: _width / 64,
            ),
            InfoCardSmall(
              title: "Delivery",
              value: "10",
              onTap: () {},
              topColor: Colors.orange,
            ),
          ],
        ));
  }
}
