import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
     child: CustomText(text: "OverView",)
    );
  }
}