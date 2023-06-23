
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.text, required this.tap, this.width, this.bgColor, this.brdColor, this.textColor, this.content
  }) : super(key: key);

  final String? text;
  final Color? bgColor;
  final Widget? content;
  final Color? brdColor;
  final Color? textColor;
  
  final VoidCallback tap;
  final double? width;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 50.sp,
        width:width ?? size.width.w,
        // ignore: sort_child_properties_last
        child: Center(
          child: content ?? Text(
            text ?? "",
            style: TextStyle(
                fontFamily: "Poppins", fontSize: 14.sp, color: textColor ?? secondaryColor
                ),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
            color: bgColor ?? backgroundColor,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: brdColor ?? secondaryColor)),
      ),
    );
  }
}
