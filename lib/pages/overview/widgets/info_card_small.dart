import 'package:adminpanel/constants/style.dart';
import 'package:adminpanel/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final dynamic onTap;
  const InfoCardSmall(
      {Key? key,
      required this.title,
      this.value,
      this.topColor,
      this.isActive=false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: isActive! ? active : lightGrey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                fontWeight: FontWeight.w300,
                color: isActive! ? active : light,
              ),
              CustomText(
                text: value!,
                size: 24,
                fontWeight: FontWeight.w300,
                color: isActive! ? active : light,
              )
            ],
          ),
        ),
      ),
    );
  }
}
