import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.fontFamily,  this.padding,
  }) : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Text(text,
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: overflow,
            softWrap: true,
            style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
                color: color));
  }
}
