import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        children: [
          InfoCard(
            title: "Rides In progress",
            value: "10",
            onTap: () {},
            topColor: Colors.orange,
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCard(
            title: "Cancelled Orders",
            value: "19",
            onTap: () {},
            topColor: Colors.yellow,
          ),
        ],
      ),
      // SizedBox(
      //   height: 10,
      // ),
      Row(
        children: [
          InfoCard(
            title: "Packages Details",
            value: "38",
            onTap: () {},
            topColor: Colors.blue,
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCard(
            title: "Scheduled Delivery",
            value: "12",
            onTap: () {},
            topColor: Colors.red,
          ),
        ],
      ),
    ]);
  }
}
