import 'package:adminpanel/constants/style.dart';
import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import 'bar_chart.dart';
import 'revenue_data.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12,
              )
            ],
            border: Border.all(color: lightGrey, width: .5)),
        child: Column(
          children: [
            Container(
              height: 260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                    text: "Revenue Chart",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: lightGrey,
                  ),
                  Container(
                    width: 600,
                    height: 200,
                    child: SimpleBarChart.withSampleData(),
                  )
                ],
              ),
            ),
            Container(
              width: 120,
              height: 1,
              color: lightGrey,
            ),
            Container(
              height: 260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      RevenueInfo(
                        title: "Today's Revenue",
                        amount: "20",
                      ),
                      RevenueInfo(
                        title: "Last 7 Days",
                        amount: "140",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      RevenueInfo(
                        title: "Today's Revenue",
                        amount: "20",
                      ),
                      RevenueInfo(
                        title: "Last 7 Days",
                        amount: "140",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
