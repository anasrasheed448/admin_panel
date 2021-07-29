import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/error.png",
                width: 350,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Page Not Found",
                    size: 24,
                    fontWeight: FontWeight.bold,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
