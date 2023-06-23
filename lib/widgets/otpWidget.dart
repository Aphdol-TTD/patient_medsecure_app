import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';


class OtpWidget extends StatelessWidget {
  final PinTheme? errorPinTheme, defaultPinTheme, focusedPinTheme;
  final TextEditingController? controller;

  const OtpWidget(
      {Key? key,
      this.controller,
      this.defaultPinTheme,
      this.errorPinTheme,
      this.focusedPinTheme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Otp layout
    return Pinput(
            keyboardType: TextInputType.text,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            length: 5,
            controller: controller,
            focusNode: FocusNode(),
            validator: (value) {
              if (value!.isEmpty && value.length < 4) {
                return "Veuillez remplir ce champ";
              }
              return null;
            },
            defaultPinTheme: defaultPinTheme,
            onCompleted: (pin) {},
            focusedPinTheme: focusedPinTheme,
            errorPinTheme: errorPinTheme);
  }
}
