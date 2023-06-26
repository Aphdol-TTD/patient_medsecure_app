import 'package:flutter/material.dart';
import 'package:patient_medsecure/andyl/splash2Screen.dart';
import 'dart:async';

//import 'homeScreen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateToHomePage();
  }

  Future<void> navigateToHomePage() async {
    await Future.delayed(const Duration(seconds: 10)); // Attendre 2 secondes
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => const Splash2Screen()), // Naviguer vers la page d'accueil après le SplashScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CircleAvatar(
          radius: 75.0, // Ajuster la taille du cercle
          backgroundColor: Colors.transparent, // Couleur de fond transparente pour le cercle
          child: ClipOval(
            child: Image.asset(
              'assets/images/aphdol.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
