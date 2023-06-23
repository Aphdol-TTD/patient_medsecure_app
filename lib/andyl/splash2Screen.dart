import 'package:flutter/material.dart';
import 'package:patient_medsecure/andyl/signUpScreen.dart';

import '../constants.dart';
import '../widgets/customText.dart';
import 'LogInScreen.dart';
import 'menuScreen.dart';

class Splash2Screen extends StatelessWidget {
  const Splash2Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CustomText(
              text: "Let's get started !",
              fontSize: 18,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
             CustomText(
              text: "Login to enjoy the feature we've provided, and stay healthy",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInScreen()), // Remplacez NextPage par la classe de votre page suivante
                  );
                },
                child: CustomText(
                  text: "Login",
                  color: secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
              ),
              
            ),
            SizedBox(height: 20,),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()), // Remplacez NextPage par la classe de votre page suivante
                  );
                },
                child: CustomText(
                  text: "Sign In",
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height:20),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuScreenPage()), // Remplacez NextPage par la classe de votre page suivante
                  );
                },
                
                child: CustomText(
                  text: "home page -->",
                  color: secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}