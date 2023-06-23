import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';


class InputFormWidget extends StatelessWidget {
  const InputFormWidget(
      {Key? key,
      this.nameController,
      this.backgroundColor,
      this.brdColor,
      this.label,
      this.obscure,
      this.maxLines,
      this.readOnly,
      this.suffix,
      this.prefix,
      this.hint,
      this.validator,
      this.keyboardType})
      : super(key: key);

  final TextEditingController? nameController;
  final String? label;
  final Color? backgroundColor;
  final Color? brdColor;
  final bool? obscure;
  final int? maxLines;
  final bool? readOnly;
  final Widget? suffix;
  final Widget? prefix;
  final String? hint;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      // style: const TextStyle(color: Colors.white),
      controller: nameController,
      readOnly: readOnly ?? false,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscure ?? false,
      validator: validator,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: InputDecoration(errorMaxLines: 3,
        errorStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  // height: 18,
                ),
          // contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          suffixIcon: suffix,
          // filled: true,
          // fillColor: backgroundColor ?? kInputBackground,
          prefixIcon: prefix,
          labelText: label,
          hintText: hint,
          labelStyle: TextStyle(
              fontFamily: 'Poppins', color: brdColor ?? secondaryColor),
          hintStyle: TextStyle(color: brdColor ?? secondaryColor),
          border:
              // InputBorder.none
              UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: brdColor ?? secondaryColor, width: 1.0)),
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(color: brdColor ?? secondaryColor, width: 1.0))),
    );
  }
}
