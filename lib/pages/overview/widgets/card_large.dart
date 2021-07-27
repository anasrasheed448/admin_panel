import 'package:adminpanel/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverViewCardsLargeScreen extends StatelessWidget {
  const OverViewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
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
        SizedBox(
          width: _width / 64,
        ),
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
    );
  }
}
