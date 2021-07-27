import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
      text: "Drivers",
    ));
  }
}
