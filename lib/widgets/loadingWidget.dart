import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: SizedBox(
        height: 50,
        width: 100,
        child: LoadingIndicator(
            indicatorType:
                Indicator.ballClipRotate,
            colors: [
              primaryColor,
              borderColor,
              secondaryColor
            ],
            strokeWidth: 1,
            backgroundColor: Colors.transparent,
            pathBackgroundColor: Colors.blue),
      )),
    );
  }
}