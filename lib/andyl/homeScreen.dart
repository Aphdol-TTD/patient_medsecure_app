import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../constants.dart';
import '../widgets/customText.dart';
import 'menuScreen.dart';
import 'profilScreen.dart';
import 'qrScreen.dart';
import 'splash2Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 130,
              // width: 200,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(-2, -2),
                        blurRadius: 10,
                        color: Colors.grey,
                        spreadRadius: 2),
                    BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 10,
                        color: Colors.grey,
                        spreadRadius: 2)
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 20,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(20))),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomText(
                        text: "SAGBO Jacob",
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        // color: secondaryColor,
                      ),
                      CustomText(
                        text: "Patient",
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        // color: secondaryColor,
                      ),
                    ],
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: size.height * 0.5,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(-2, -2),
                        blurRadius: 10,
                        color: Colors.grey,
                        spreadRadius: 2),
                    BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 10,
                        color: Colors.grey,
                        spreadRadius: 2)
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppButton(
                    width: double.maxFinite,
                    text: "Dossier Medical",textColor: Colors.white,color: Colors.green,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DossierMedical()));
                    },
                  ),
                  AppButton(
                    width: double.maxFinite,
                    text: "Profil",textColor: Colors.white,color: Colors.green,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilScreen()));
                    },
                  ),AppButton(
                    width: double.maxFinite,
                    text: "Mon QR Code",textColor: Colors.white,color: Colors.green,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QRScreen()));
                    },
                  ),
                  AppButton(
                    width: double.maxFinite,
                    text: "Déconnexion",textColor: Colors.white,color: Colors.green,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Splash2Screen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
