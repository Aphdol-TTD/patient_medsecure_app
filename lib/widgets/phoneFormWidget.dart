// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:intl_phone_field/phone_number.dart';

// import '../utils/constants.dart';
// import '../utils/phoneFormatted.dart';

// class PhoneFormField extends StatelessWidget {
//   const PhoneFormField(
//       {super.key, required this.phoneController, this.validator});

//   final TextEditingController phoneController;
//   final FutureOr<String?> Function(PhoneNumber?)? validator;

//   @override
//   Widget build(BuildContext context) {
//     return IntlPhoneField(
//       validator: validator,
//       controller: phoneController,
//       dropdownIconPosition: IconPosition.trailing,
//       disableLengthCheck: true,
//       flagsButtonMargin: const EdgeInsets.only(left: 6),
//       inputFormatters: [
//         FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//         LengthLimitingTextInputFormatter(10),
//         PhoneNumberInputFormatter()
//       ],
//       decoration: InputDecoration(
//           // labelText: 'Numero de telephone',
//           contentPadding: const EdgeInsets.symmetric(horizontal: 8),
//           hintText: 'XX XX XX XX XX',
//           filled: true,
//           fillColor: const Color(0xffEFEFF0),
//           // floatingLabelAlignment: FloatingLabelAlignment.start,
//             border:
//                 // InputBorder.none
//                 OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide:
//                         BorderSide(color: borderColor, width: 1.0)),
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide:
//                     BorderSide(color: borderColor, width: 1.0))),
//       initialCountryCode: 'FR',
//       onChanged: (phone) {
//         print(phone.completeNumber);
//       },
//     );
//   }
// }
