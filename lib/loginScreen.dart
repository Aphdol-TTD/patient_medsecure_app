import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/InputFormWidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backgroundColor,
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        const Icon(Icons.access_alarm, size: 100,),
        InputFormWidget(label: "Email", prefix: Icon(Icons.mail, color: secondaryColor,),),
        const SizedBox(height: 12,),
        InputFormWidget(label: "Mot de Passe", prefix: Icon(Icons.lock, color: secondaryColor,),),
        const SizedBox(height: 35,),
        // ButtonWidget(tap: () {  },text: "Se connecter",),
        Align(alignment: Alignment.centerRight,
          child: TextButton(onPressed: (){}, child: const Text("Mot de Passe Oublié ?"))),
          Row(children: [
            const Text("Pas encore membre ? "),
            TextButton(onPressed: (){}, child: const Text("S'inscrire"))
          ],)
      ])
    );
  }
}